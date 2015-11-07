class Medication < ActiveRecord::Base
	belongs_to :scheduled_event
end
