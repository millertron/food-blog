class AddRecipeIdToRecipeSteps < ActiveRecord::Migration[5.2]
  def change
    add_column :recipe_steps, :recipe_id, :integer
    add_index :recipe_steps, :recipe_id
    add_foreign_key :recipe_steps, :recipes
  end
end
