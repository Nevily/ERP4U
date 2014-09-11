class AddImproveProcessesIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :improve_processes_id, :string
  end
end
