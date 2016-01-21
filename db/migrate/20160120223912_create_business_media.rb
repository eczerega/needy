class CreateBusinessMedia < ActiveRecord::Migration
  def change
    create_table :business_media do |t|
      t.string :social_need_id
      t.string :integer
      t.string :content_url
      t.string :string
      t.string :content_type
      t.string :integer

      t.timestamps null: false
    end
  end
end
