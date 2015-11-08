class CreatePrescriptions < ActiveRecord::Migration
  def change
    create_table :prescriptions do |t|
      t.integer :scheduled_event_id
      t.integer :medication_id

      t.timestamps null: false
    end
  end
end
