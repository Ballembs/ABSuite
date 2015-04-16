class AddImageToUnisysNews < ActiveRecord::Migration
  def change
    add_column :unisys_news, :image, :string
  end
end
