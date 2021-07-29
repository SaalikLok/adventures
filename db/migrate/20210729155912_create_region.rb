class CreateRegion < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :name, null:false
      t.decimal :latitude, null: false
      t.decimal :longitude, null: false
      
      t.timestamps
    end
  end
end
