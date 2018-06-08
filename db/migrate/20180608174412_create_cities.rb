class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|

      t.timestamps
      t.string "name"
      t.string "country"
      t.decimal "population"
      t.decimal "popdensity"
      t.decimal "area"
      t.string "region"
    end
  end
end
