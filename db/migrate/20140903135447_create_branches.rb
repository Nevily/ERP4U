class CreateBranches < ActiveRecord::Migration
  def change
    create_table :branches do |t|
      t.string :title,              null: false
      t.boolean :approved, null: false, default: false

      t.timestamps
    end
  end
end
