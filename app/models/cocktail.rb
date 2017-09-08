class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, uniqueness: true, presence: true
  # validates_presence_of :name
end

# cocktail.doses
# Doses.where(cocktail_id: self.id) = an array of doses


