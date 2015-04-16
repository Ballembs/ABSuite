class AddDescriptionCategoryToUnisysNews < ActiveRecord::Migration
  def change
    add_column :unisys_news, :description, :string
    add_column :unisys_news, :category, :string
  end
end
