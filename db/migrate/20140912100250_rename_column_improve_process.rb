class RenameColumnImproveProcess < ActiveRecord::Migration
  def self.up
    rename_column :users, :improve_processes_id, :improve_process_id
  end

  def self.down
    # rename back if you need
  end
end
