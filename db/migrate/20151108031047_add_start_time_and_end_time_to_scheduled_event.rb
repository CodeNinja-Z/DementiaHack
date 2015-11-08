class AddStartTimeAndEndTimeToScheduledEvent < ActiveRecord::Migration
  def change
    add_column :scheduled_events, :start_time, :datetime
    add_column :scheduled_events, :end_time, :datetime
  end
end
