class Ingredient < ApplicationRecord
  validates :name, uniqueness: true, presence: true

  # belongs_to :cocktail , through: :doses
  has_many :doses
end
