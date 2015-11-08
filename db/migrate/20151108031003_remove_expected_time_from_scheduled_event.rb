class RemoveExpectedTimeFromScheduledEvent < ActiveRecord::Migration
  def change
    remove_column :scheduled_events, :expected_time, :datetime
  end
end
