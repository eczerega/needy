class SocialsNeedImage < ActiveRecord::Base
  has_attached_file :image_content                                                                 ,
                    :storage        => :s3                                                 ,
                    :s3_credentials => {:bucket            => "needychile",
                                        :access_key_id     => "AKIAJNSKYTUF45IMTG5Q",
                                        :secret_access_key => "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"},
                    :s3_protocol    => "https"                                             ,
                    :s3_host_name   => "s3-us-west-2.amazonaws.com"                        ,
                    styles: { imagenG: "300x200" },
                    default_url: 'http://biodiv.org.ar/wp-content/themes/fearless/images/missing-image-640x360.png'
    validates_attachment_content_type :image_content, content_type: /\Aimage\/.*\Z/, :size => { :less_than => 3.megabyte }
	belongs_to :socials_need

end
#AKIAJNSKYTUF45IMTG5Q
#Key: 6JxGsFGbFTVz9qA3cN50RogtCoYg5YzwjHrimPXy