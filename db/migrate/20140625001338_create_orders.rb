class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :time
      t.boolean :delivered, default: false

      t.timestamps
    end
  end
end
