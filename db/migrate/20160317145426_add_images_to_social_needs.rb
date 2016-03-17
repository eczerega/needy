class AddImagesToSocialNeeds < ActiveRecord::Migration
  def self.up
    add_attachment :socials_needs, :image_content
  end

end
