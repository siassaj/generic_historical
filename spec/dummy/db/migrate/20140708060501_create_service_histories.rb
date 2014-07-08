class CreateServiceHistories < ActiveRecord::Migration
  def change
    create_table :service_histories do |t|

      t.timestamps
    end
  end
end
