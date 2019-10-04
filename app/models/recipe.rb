class Recipe < ApplicationRecord
  has_many :recipe_steps, dependent: :destroy
  accepts_nested_attributes_for :recipe_steps, allow_destroy: true
  has_one_attached :photo
end
