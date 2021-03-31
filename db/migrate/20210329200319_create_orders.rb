class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :location_id
      t.boolean :paid_for, :default => false

      t.timestamps
    end
  end
end
