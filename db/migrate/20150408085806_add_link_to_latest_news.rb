class AddLinkToLatestNews < ActiveRecord::Migration
  def change
    add_column :latest_news, :link, :string
  end
end
