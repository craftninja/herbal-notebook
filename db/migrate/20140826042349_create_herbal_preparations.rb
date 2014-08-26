class CreateHerbalPreparations < ActiveRecord::Migration
  def change
    create_table :herbal_preparations do |t|
      t.belongs_to :herb
      t.belongs_to :preparation
      t.boolean :favorite
      t.timestamps
    end
  end
end
