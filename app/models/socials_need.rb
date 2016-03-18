class SocialsNeed < ActiveRecord::Base
	has_many :socials_need_images, dependent: :destroy
	belongs_to :category
end
