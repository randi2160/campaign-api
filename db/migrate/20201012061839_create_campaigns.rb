class CreateCampaigns < ActiveRecord::Migration[6.0]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :city
      t.string :state
      t.string :country
      t.string :userid

      t.timestamps
    end
  end
end
