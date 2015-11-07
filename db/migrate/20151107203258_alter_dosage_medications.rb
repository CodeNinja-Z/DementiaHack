class AlterDosageMedications < ActiveRecord::Migration
	def change
		rename_column :medications, :dosage, :dosage_in_milligrams
		change_column :medications, :dosage_in_milligrams, :float
	end
end
