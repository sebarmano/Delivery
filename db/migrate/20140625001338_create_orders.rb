class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.datetime :time
      t.boolean :delivered

      t.timestamps
    end
  end
end
