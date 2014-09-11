class AddLocalphoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :local_phone, :string
  end
end
