class CreateGetStartedPdfs < ActiveRecord::Migration
  def change
    create_table :get_started_pdfs do |t|
      t.string :title
      t.string :content

      t.timestamps
    end
  end
end
