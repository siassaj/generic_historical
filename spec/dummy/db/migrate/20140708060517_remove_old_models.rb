class RemoveOldModels < ActiveRecord::Migration
  def change
    drop_table :reportables
    drop_table :reports

  end
end
