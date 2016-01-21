class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.string :name
      t.string :string
      t.string :picture
      t.string :string
      t.string :web
      t.string :string

      t.timestamps null: false
    end
  end
end
