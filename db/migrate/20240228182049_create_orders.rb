class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.integer :quantity
      t.date :date
      t.monetize :amount, currency: { present: false }
      t.string :checkout_session_id
      t.string :state
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
