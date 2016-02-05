class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :name
      t.string :string
      t.string :description
      t.string :string
      t.string :start_date
      t.string :date
      t.string :end_date
      t.string :date
      t.string :latitude
      t.string :string
      t.string :longitude
      t.string :string
      t.string :location
      t.string :string
      t.string :reward
      t.string :string
      t.string :conditions
      t.string :string
      t.string :stage
      t.string :string

      t.timestamps null: false
    end
  end
end
