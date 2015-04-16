class AddImageToLastestNews < ActiveRecord::Migration
  def change
    add_column :latest_news, :image, :string
  end
end
