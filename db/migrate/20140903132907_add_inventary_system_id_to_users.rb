class AddInventarySystemIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :inventary_system_id, :string
  end
end
