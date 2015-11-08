class RemoveScheduledEventIdFromMedication < ActiveRecord::Migration
  def change
    remove_column :medications, :scheduled_event_id, :string
  end
end
