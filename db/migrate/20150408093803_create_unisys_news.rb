class CreateUnisysNews < ActiveRecord::Migration
  def change
    create_table :unisys_news do |t|
      t.string :title
      t.string :link

      t.timestamps
    end
  end
end
