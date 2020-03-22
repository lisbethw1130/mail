class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :from_email
      t.string :from_name
      t.string :reply_to
      t.string :title
      t.text :plain_text
      t.text :html_text
      t.date :sent_date
      t.integer :recipients

      t.timestamps
    end
  end
end
