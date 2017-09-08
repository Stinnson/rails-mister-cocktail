class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true
  # validates_presence_of :description
  validates :ingredient, presence: true
  validates :cocktail, presence: true
  validates :ingredient, uniqueness: {scope: :cocktail}
end
