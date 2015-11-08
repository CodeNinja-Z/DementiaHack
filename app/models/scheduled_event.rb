class ScheduledEvent < ActiveRecord::Base

	has_many :medications
	belongs_to :scheduled_event

	def self.mark_as_successful?(event)
		if event.event_id? && event.created_at?
			case event
			when ScheduledEvent.where(expected_time: )
				successful = true
			end
		end
	end
end
