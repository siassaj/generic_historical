class RenameReportItemsToHistoricalItems < ActiveRecord::Migration
  def change
    rename_table :report_items, :historical_items

    rename_column :historical_items, :report_id, :historical_id
    rename_column :historical_items, :report_type, :historical_type
  end
end
