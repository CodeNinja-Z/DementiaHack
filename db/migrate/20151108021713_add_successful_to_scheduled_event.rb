class AddSuccessfulToScheduledEvent < ActiveRecord::Migration
  def change
    add_column :scheduled_events, :successful, :boolean
  end
end
