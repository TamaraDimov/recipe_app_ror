class RecipeFood < ApplicationRecord
  # Associations
  belongs_to :food, class_name: 'Food'
  belongs_to :recipe, class_name: 'Recipe'

  # Attributes
  attribute :quantity, :integer

  # Callbacks

  # Validations
  validates :quantity, presence: true

  # Mehtods
end
