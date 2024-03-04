class Product < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo
  monetize :price_cents

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :stock, presence: true, numericality: { greater_than: 0 }
  validates :category, presence: true
end
