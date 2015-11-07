class AddPatientIdToCaregiver < ActiveRecord::Migration
  def change
  	add_column :caregivers, :patinet_id, :integer
  end
end
