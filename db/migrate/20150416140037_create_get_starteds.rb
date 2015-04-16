class CreateGetStarteds < ActiveRecord::Migration
  def change
    create_table :get_starteds do |t|
      t.string :title
      t.string :content
      t.string :link

      t.timestamps
    end
  end
end
