class AddSalarySystemIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :salary_system_id, :string
  end
end
