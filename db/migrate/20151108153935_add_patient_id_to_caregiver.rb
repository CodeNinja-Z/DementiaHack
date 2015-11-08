class AddPatientIdToCaregiver < ActiveRecord::Migration
  def change
    add_column :caregivers, :patient_id, :integer
  end
end
