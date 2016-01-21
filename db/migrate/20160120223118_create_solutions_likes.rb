class CreateSolutionsLikes < ActiveRecord::Migration
  def change
    create_table :solutions_likes do |t|
      t.string :user_id
      t.string :integer
      t.string :solution_id
      t.string :integer
      t.string :value
      t.string :string

      t.timestamps null: false
    end
  end
end
