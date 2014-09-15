class RemoveUserColumn < ActiveRecord::Migration
  def change
    remove_column :users, :inventary_system_id
    remove_column :users, :logictics_system_id
    remove_column :users, :improve_process_id
  end
end
