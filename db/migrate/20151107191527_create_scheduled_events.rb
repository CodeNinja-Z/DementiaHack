class CreateScheduledEvents < ActiveRecord::Migration
  def change
    create_table :scheduled_events do |t|

      t.timestamps null: false
    end
  end
end
