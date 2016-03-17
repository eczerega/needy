class AddImagesToSocialNeedsImages < ActiveRecord::Migration
  def self.up
    add_attachment :socials_need_images, :image_content
  end

end
