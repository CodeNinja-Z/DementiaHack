class Medication < ActiveRecord::Base
	has_many :scheduled_events, through: :prescription
end

