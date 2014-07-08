class CreateMaintenances < ActiveRecord::Migration
  def change
    create_table :maintenances do |t|
      t.integer :robot_id

      t.timestamps
    end
  end
end
