class AddLogisticsSystemIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :logitics_system_id, :string
  end
end
