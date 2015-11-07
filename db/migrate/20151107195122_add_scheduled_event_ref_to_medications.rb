class AddScheduledEventRefToMedications < ActiveRecord::Migration
  def change
    add_reference :medications, :scheduled_event, index: true, foreign_key: true
  end
end
