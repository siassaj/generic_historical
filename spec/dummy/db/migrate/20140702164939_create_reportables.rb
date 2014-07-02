class CreateReportables < ActiveRecord::Migration
  def change
    create_table :reportables do |t|

      t.timestamps
    end
  end
end
