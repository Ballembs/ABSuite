class AddImageToGetStarteds < ActiveRecord::Migration
  def change
    add_column :get_starteds, :image, :string
  end
end
