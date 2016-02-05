class CreateBusinessNeeds < ActiveRecord::Migration
  def change
    create_table :business_needs do |t|
      t.string :user_id
      t.string :integer
      t.string :name
      t.string :string
      t.string :description
      t.string :string
      t.string :latitude
      t.string :integer
      t.string :longitude
      t.string :integer
      t.string :address
      t.string :string

      t.timestamps null: false
    end
  end
end
