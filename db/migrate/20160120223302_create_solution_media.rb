class CreateSolutionMedia < ActiveRecord::Migration
  def change
    create_table :solution_media do |t|
      t.string :solution_id
      t.string :integer
      t.string :content_url
      t.string :string
      t.string :content_type
      t.string :integer

      t.timestamps null: false
    end
  end
end
