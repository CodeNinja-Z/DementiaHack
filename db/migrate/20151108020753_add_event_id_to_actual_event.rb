class AddEventIdToActualEvent < ActiveRecord::Migration
  def change
    add_column :actual_events, :event_id, :integer
  end
end
