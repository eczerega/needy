class User < ActiveRecord::Base

  attr_accessor :password, :current_password, :password_confirmation

  has_many :tokens
  has_many :user_oauths, dependent: :destroy

  before_save :encrypt_password
  #API
  has_one :api_key
  #END API
  validates_confirmation_of :password, :on => :create
  validates_presence_of :password, :on => :create
  validates_length_of :password, :minimum => 4, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email 
  # validates_presence_of :first_name
  # validates_presence_of :last_name

  has_attached_file :avatar, :styles => { :medium => "300x300>",  :medium_s => "300x300#", :thumb => "64x64#" },        
                     :storage => :s3,
                     :bucket => 'default-init', #crear nuevo bucket en amazon y cambiarlo
                     :s3_credentials => {
                        :access_key_id => ENV['S3_KEY_ID'],
                        :secret_access_key => ENV['S3_SECRET_ACCESS_KEY']
                     },
                     :path => ":attachment/:id/:style/:basename.:extension"

  extend FriendlyId
  friendly_id :slug_candidates, use: [:slugged, :finders]
  def slug_candidates
  [
    [:first_name, :last_name],
    [:first_name, :last_name, :id],
    [:first_name, :last_name, :id, :created_at_slug]
  ]
  end
  def created_at_slug
    I18n.l (self.created_at ? self.created_at : Time.now), format: :slug
  end

  def to_s
    r = (self.first_name ? self.first_name.to_s+' ' : '')+self.last_name.to_s
    return r!='' ? r : self.email
  end

  def full_name
    self.to_s
  end
  #API
  def to_json(scope = '')
    super(:only => [:id, :email], :methods => [:full_name, :access_token])
  end  
  def access_token
    self.api_key = self.api_key ? self.api_key : ApiKey.create(user_id: self.id)
    return self.api_key.access_token
  end
  #END API
  def name
    self.to_s
  end

  def admin?
    self.admin==true
  end

  def self.authenticate(email, password)
    user = find_by_email(email.downcase)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user.active=true
      user
    else
      nil
    end
  end

  def valid_password?(password)
    self.password_hash == BCrypt::Engine.hash_secret(password, self.password_salt)
  end

  def encrypt_password
   if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

  def get_image(size = :medium)
    begin
      return self.avatar.url!='/avatars/original/missing.png' ? self.avatar(size) : self.image!=''&&self.image!=nil ? self.image : '/assets/missing.png'
    rescue
      return '/assets/missing.png'
    end
  end
  def has_image?
    return self.avatar.url!='/avatars/original/missing.png' 
  end
  #G+ login
  def self.from_omniauth(auth)
    u=UserOauth.find_by_provider_and_uid(auth["provider"], auth["uid"])
    u.present? ? u.user :  create_with_omniauth(auth)
  end
  def self.create_with_omniauth(auth)
    u=User.find_by_email(auth["info"]["email"])
    unless u
      create! do |user|
        user.email= auth["info"]["email"]
        user.password=SecureRandom.hex
        user.first_name = auth["info"]["first_name"]
        user.last_name = auth["info"]["last_name"]
        user.image = auth["info"]["image"] if auth["info"]["image"].present?
        u=user
      end
    end
    u.user_oauths.create(provider: auth["provider"],uid: auth["uid"])
    u
  end

end
