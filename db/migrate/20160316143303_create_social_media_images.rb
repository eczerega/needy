class CreateSocialMediaImages < ActiveRecord::Migration
  def change
    create_table :social_media_images do |t|
      t.integer :socials_need_id
      t.string :image

      t.timestamps null: false
    end
  end
end
