class CreateBusinessNeedCategories < ActiveRecord::Migration
  def change
    create_table :business_need_categories do |t|
      t.string :category_id
      t.string :integer
      t.string :social_need_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
