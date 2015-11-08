class AddGridIdToScheduledEvent < ActiveRecord::Migration
  def change
  	add_column :scheduled_events, :grid_id, :integer 
  end
end
