class AddProvinceIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :province_id, :string
  end
end
