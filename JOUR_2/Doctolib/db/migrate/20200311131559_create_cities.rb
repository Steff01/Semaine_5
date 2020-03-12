class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t| 
      t.belongs_to :physician, index: true
      t.belongs_to :patient, index: true
      t.belongs_to :appointment, index: true
      t.string :city_name
      t.timestamps
    end
  end
end
