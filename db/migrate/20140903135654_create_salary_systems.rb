class CreateSalarySystems < ActiveRecord::Migration
  def change
    create_table :salary_systems do |t|
      t.string :title,              null: false
      t.boolean :valid, null: false, default: false

      t.timestamps
    end
  end
end
