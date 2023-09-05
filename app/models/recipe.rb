class Recipe < ApplicationRecord
  # Associations
  belongs_to :user, class_name: 'User'
  has_many :recipe_foods, class_name: 'RecipeFood'
  has_and_belongs_to_many :foods, join_table: 'recipe_foods'
  # Attributes
  attribute :name, :string
  attribute :preparation_time_minutes, :integer
  attribute :cooking_time_minutes, :integer
  attribute :description, :string
  attribute :is_public, :boolean

  # Callbacks

  # Validations
  validates :is_public, inclusion: { in: [true, false] }
  # Mehtods
end
