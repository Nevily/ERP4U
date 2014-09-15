class RenameColumn < ActiveRecord::Migration
  def self.up
    rename_column :users, :logitics_system_id, :logictics_system_id
  end

  def self.down
    # rename back if you need
  end
end
