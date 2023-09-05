class Food < ApplicationRecord
  # Associations
  belongs_to :user, class_name: 'User'
  has_many :recipe_foods, class_name: 'RecipeFood'
  has_and_belongs_to_many :recipes, join_table: 'recipe_foods'

  # Attributes
  attribute :name, :string
  attribute :measurement_unit, :string
  attribute :price, :decimal
  attribute :quantity, :integer

  # Callbacks

  # Validations

  # Mehtods
end
