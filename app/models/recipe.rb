class Recipe < ApplicationRecord
  alias_attribute :steps, :recipe_steps
  has_many :recipe_steps, dependent: :destroy
  accepts_nested_attributes_for :recipe_steps, allow_destroy: true
end
