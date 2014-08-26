class CreatePreparations < ActiveRecord::Migration
  def change
    create_table :preparations do |t|
      t.string :name
      t.text :recipe
      t.timestamps
    end
  end
end
