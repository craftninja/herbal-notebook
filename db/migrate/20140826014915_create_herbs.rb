class CreateHerbs < ActiveRecord::Migration
  def change
    create_table :herbs do |t|
      t.belongs_to :part
      t.belongs_to :plant
      t.string :time_to_collect
      t.timestamps
    end
  end
end
