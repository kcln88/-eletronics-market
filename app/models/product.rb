class Product < ApplicationRecord
  belongs_to :user
  has_many :orders
  has_one_attached :photo

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :stock, presence: true, numericality: { greater_than: 0 }
  validates :category, presence: true

  include PgSearch::Model
  pg_search_scope :search_product,
    against: [ :name],
    using: {
      tsearch: { prefix: true }
    }
end
