class CreateSocialsNeedImages < ActiveRecord::Migration
  def change
    create_table :socials_need_images do |t|
      t.integer :socials_need_id
      t.string :image_url

      t.timestamps null: false
    end
  end
end
