class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :common_name
      t.text :species
      t.text :contraindications
      t.timestamps
    end
  end
end
