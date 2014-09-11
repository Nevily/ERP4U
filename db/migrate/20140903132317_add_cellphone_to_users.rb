class AddCellphoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cell_phone, :string
  end
end
