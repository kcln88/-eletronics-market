class Order < ApplicationRecord
  belongs_to :product
  belongs_to :user
  monetize :amount_cents

  validates :quantity, presence: true, numericality: { greater_than: 0 }
end
