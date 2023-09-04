class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #  , :confirmable

  # Associations
  has_many :foods
  has_many :recipes

  # Attributes
  attribute :name, :string

  # Callbacks

  # Validations
  validates :name, presence: true

  # Mehtods
end
