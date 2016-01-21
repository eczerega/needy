class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :level
      t.string :integer
      t.string :name
      t.string :string

      t.timestamps null: false
    end
  end
end
