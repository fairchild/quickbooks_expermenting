class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.text :descrption
      t.date :starts_on
      t.date :ends_on
      t.integer :customer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
