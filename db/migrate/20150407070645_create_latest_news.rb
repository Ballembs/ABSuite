class CreateLatestNews < ActiveRecord::Migration
  def change
    create_table :latest_news do |t|
      t.string :heading
      t.string :subheading
      t.text :content

      t.timestamps
    end
  end
end
