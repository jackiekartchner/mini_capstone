class Product < ApplicationRecord

  # validates :name, uniqueness: true
  # validates :price, numericality: { greater_than: 0 }
  # # validates :image_url, presence: true
  # validates :description, length: { in: 10...500 }

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  has_many :orders

  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products

  def cateogry_names
    categories.map { |category| category.name }
  end
  
  def is_discounted?
    price <= 10
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end

end
