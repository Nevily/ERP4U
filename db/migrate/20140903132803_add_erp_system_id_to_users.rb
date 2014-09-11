class AddErpSystemIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :erp_system_id, :string
  end
end