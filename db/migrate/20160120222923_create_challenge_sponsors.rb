class CreateChallengeSponsors < ActiveRecord::Migration
  def change
    create_table :challenge_sponsors do |t|
      t.string :challenge_id
      t.string :integer
      t.string :sponsor_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
