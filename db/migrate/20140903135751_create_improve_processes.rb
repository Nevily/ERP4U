class CreateImproveProcesses < ActiveRecord::Migration
  def change
    create_table :improve_processes do |t|
      t.string :title,              null: false
      t.boolean :valid, null: false, default: false

      t.timestamps
    end
  end
end
