class CreateBreweries < ActiveRecord::Migration[5.1]
  def change
    create_table :breweries do |t|
      t.string :name
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
