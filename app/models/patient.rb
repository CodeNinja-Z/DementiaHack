class Patient < ActiveRecord::Base

	has_many :caregivers
	has_many :clinicians
	
end
