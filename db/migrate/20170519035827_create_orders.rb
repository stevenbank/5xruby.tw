class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :activitiable, index: true, polymorphic: true
      t.string :state
      t.integer :amount
      t.json :fields
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
