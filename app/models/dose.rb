class Dose < ApplicationRecord
  # validates :description, presence: true
  # validates :cocktail_id, presence: true
  # validates :ingredient_id, presence: true
  validates :description, :ingredient, :cocktail, presence: true
  # validates_uniqueness_of :cocktail_id, scope: [:ingredient_id]
  validates_uniqueness_of :cocktail, scope: [:ingredient]

  belongs_to :cocktail
  belongs_to :ingredient
end
