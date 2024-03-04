class AddPriceToProducts < ActiveRecord::Migration[7.1]
  def change
    add_monetize :products, :price, currency: { present: false }
  end
end
