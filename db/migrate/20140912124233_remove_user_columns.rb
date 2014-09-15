class RemoveUserColumns < ActiveRecord::Migration
  def change
    remove_column :users, :company_name
    remove_column :users, :cell_phone
    remove_column :users, :local_phone
    remove_column :users, :company_description
    remove_column :users, :branch_id
    remove_column :users, :province_id
    remove_column :users, :erp_system_id
    remove_column :users, :inventory_system_id
    remove_column :users, :salary_system_id
    remove_column :users, :logitics_system_id
    remove_column :users, :improve_processes_id
  end
end
