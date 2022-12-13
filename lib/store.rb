class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than_equal_to: 0}
  validate: mens_or_womens_apparel

  def mens_or_womens_apparel
    if (!mens_apparel && !womens_apparel)
      errors.add(:store, "must offer either mens or womens apparel")
  end
end
