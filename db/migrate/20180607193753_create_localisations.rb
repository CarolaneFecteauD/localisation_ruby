class CreateLocalisations < ActiveRecord::Migration[5.2]
  def change
    create_table :localisations do |t|

      t.timestamps
    end
  end
end
