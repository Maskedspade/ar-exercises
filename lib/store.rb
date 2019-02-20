class Store < ActiveRecord::Base
  has_many :employees
  validates :name, :annual_revenue, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0}
  validate :validate_apparel, on: :create

  def validate_apparel
    (self.errors[:base] << "we need to sell some clothes") unless (mens_apparel || womens_apparel)
  end
end
