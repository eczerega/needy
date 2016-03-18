class AddCategoriesToSocialNeeds < ActiveRecord::Migration
  def change
      add_column :socials_needs, :category_id, :integer
  end
end
