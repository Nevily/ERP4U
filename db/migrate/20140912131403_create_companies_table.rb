class CreateCompaniesTable < ActiveRecord::Migration
  def change
    create_table(:companies) do |t|
      t.string :name
      t.string :phone
      t.text :description
      t.integer :branch_id
      t.integer :province_id
      t.integer :erp_system_id
      t.integer :inventory_system_id
      t.integer :salary_system_id
      t.integer :logistics_system_id
      t.integer :improve_process_id
      t. integer :user_id
 
      t.timestamps
    end

    add_index :companies, :user_id,                unique: true
  end
end
