class AddExpectedTimeToScheduledEvent < ActiveRecord::Migration
  def change
    add_column :scheduled_events, :expected_time, :datetime
  end
end
