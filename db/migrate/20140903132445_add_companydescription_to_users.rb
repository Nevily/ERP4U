class AddCompanydescriptionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :company_description, :string
  end
end
