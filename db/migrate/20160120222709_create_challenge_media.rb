class CreateChallengeMedia < ActiveRecord::Migration
  def change
    create_table :challenge_media do |t|
      t.string :content_url
      t.string :string
      t.string :content_type
      t.string :string

      t.timestamps null: false
    end
  end
end
