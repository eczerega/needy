class CreateChallengeSolutions < ActiveRecord::Migration
  def change
    create_table :challenge_solutions do |t|
      t.string :user_id
      t.string :integer
      t.string :name
      t.string :string
      t.string :challenge_id
      t.string :integer
      t.string :destription
      t.string :string

      t.timestamps null: false
    end
  end
end
