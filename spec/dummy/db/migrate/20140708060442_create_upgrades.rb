class CreateUpgrades < ActiveRecord::Migration
  def change
    create_table :upgrades do |t|
      t.integer :robot_id

      t.timestamps
    end
  end
end
