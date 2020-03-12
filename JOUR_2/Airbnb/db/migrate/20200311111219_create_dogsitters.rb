class CreateDogsitters < ActiveRecord::Migration[6.0]
  def change
    create_table :dogsitters do |t|
      t.string :ds_name
      t.belongs_to :city
      
      t.timestamps
    end
  end
end
