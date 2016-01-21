class CreateCommnetLikes < ActiveRecord::Migration
  def change
    create_table :commnet_likes do |t|
      t.string :commnets_id
      t.string :integer
      t.string :value
      t.string :integer
      t.string :user_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
