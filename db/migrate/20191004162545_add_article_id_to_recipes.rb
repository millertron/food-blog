class AddArticleIdToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :article_id, :integer
    add_foreign_key :recipes, :articles
    add_index :recipes, :article_id

    remove_foreign_key :articles, :recipes
    remove_index :articles, :recipe_id
    remove_column :articles, :recipe_id
  end
end
