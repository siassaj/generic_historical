class CreateReportItems < ActiveRecord::Migration
  def change
    create_table :report_items do |t|
      t.integer :item_id
      t.integer :item_type
      t.integer :report_id
      t.integer :report_type
    end
  end
end
