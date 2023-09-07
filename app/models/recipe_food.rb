class RecipeFood < ApplicationRecord
  # Associations
  belongs_to :food, class_name: 'Food', foreign_key: 'food_id'
  belongs_to :recipe, class_name: 'Recipe', foreign_key: 'recipe_id'

  # Attributes
  attribute :quantity, :integer

  # Callbacks

  # Validations
  validates :quantity, presence: true

  # Mehtods
end
