class CreateActualEvents < ActiveRecord::Migration
  def change
    create_table :actual_events do |t|

      t.timestamps null: false
    end
  end
end
