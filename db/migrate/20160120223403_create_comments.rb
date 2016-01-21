class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :type
      t.string :integer
      t.string :social_need_id
      t.string :integer
      t.string :user_id
      t.string :integer
      t.string :parent_id
      t.string :integer
      t.string :content
      t.string :string

      t.timestamps null: false
    end
  end
end
