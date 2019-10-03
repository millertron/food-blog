class CreateRecipeSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :recipe_steps do |t|
      t.string :text
      t.string :image_url
      t.integer :order

      t.timestamps
    end
  end
end
