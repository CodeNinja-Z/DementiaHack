class AddScheduleRefToScheduledEvents < ActiveRecord::Migration
  def change
    add_reference :scheduled_events, :schedule, index: true, foreign_key: true
  end
end
