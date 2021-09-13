class CreateRegion < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :city, null: false
      t.string :state, null: false
      t.string :coutnry, null: false
      t.string :img_url
      
      t.timestamps
    end
  end
end
