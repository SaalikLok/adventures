class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name, null: false
      t.string :description
      t.text :notes
      t.integer :rating
      t.string :img_url
      t.decimal :latitude
      t.decimal :longitude
      t.string :cuisine
      t.belongs_to :region
      t.timestamps
    end
  end
end
