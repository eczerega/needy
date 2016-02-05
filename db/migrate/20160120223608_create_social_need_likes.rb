class CreateSocialNeedLikes < ActiveRecord::Migration
  def change
    create_table :social_need_likes do |t|
      t.string :user_id
      t.string :integer
      t.string :social_need_id
      t.string :integer
      t.string :value
      t.string :integer

      t.timestamps null: false
    end
  end
end
