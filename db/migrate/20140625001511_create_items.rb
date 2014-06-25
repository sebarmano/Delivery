class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :meal, index: true
      t.references :order, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
