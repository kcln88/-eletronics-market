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
  validates :photo, presence: true
  validates :price_cents, presence: true, numericality: { greater_than: 0 }

  include PgSearch::Model
  pg_search_scope :search_product,
    against: [ :name],
    using: {
      tsearch: { prefix: true }
    }
end
