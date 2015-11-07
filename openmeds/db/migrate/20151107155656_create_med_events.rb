class CreateMedEvents < ActiveRecord::Migration
  def change
    create_table :med_events do |t|
      t.integer :med_id
      t.time :time_of_event

      t.timestamps null: false
    end
  end
end
