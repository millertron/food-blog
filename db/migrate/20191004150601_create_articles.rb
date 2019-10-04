class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :body
      t.belongs_to :user, foreign_key: true
      t.references :recipe, foreign_key: true
      t.text :abstract
      t.date :published_date

      t.timestamps
    end
  end
end
