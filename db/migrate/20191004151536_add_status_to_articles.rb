class AddStatusToArticles < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      CREATE TYPE article_status AS ENUM ('draft', 'published', 'deleted');
    SQL
    add_column :articles, :status, :article_status
    add_index :articles, :status
  end

  def down
    remove_index :articles, :status
    remove_column :articles, :status
    execute <<-SQL
      DROP TYPE article_status;
    SQL
  end

end
