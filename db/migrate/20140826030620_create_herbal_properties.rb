class CreateHerbalProperties < ActiveRecord::Migration
  def change
    create_table :herbal_properties do |t|
      t.belongs_to :herb
      t.belongs_to :property
      t.boolean :specific
    end
  end
end
