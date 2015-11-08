class ScheduledEvent < ActiveRecord::Base

	has_many :medications
	belongs_to :scheduled_event

	def mark_as_successful?
		events = ActualEvent.all
		events.each do |event|
			if event.event_id? && event.created_at?
				case event
				when # there is a ScheduledEvent with a time window that the actual event falls within
					successful = true
				end
			end
		end
	end
end
