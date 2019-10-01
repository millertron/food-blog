class AddStatusToUsers < ActiveRecord::Migration[5.2]
  def up
    execute <<-SQL
      CREATE TYPE user_status AS ENUM ('registered', 'active', 'deactivated');
    SQL
    add_column :users, :status, :user_status
    add_index :users, :status
  end

  def down
    remove_index :users, :status
    remove_column :users, :status
    execute <<-SQL
      DROP TYPE user_status;
    SQL
  end
end
