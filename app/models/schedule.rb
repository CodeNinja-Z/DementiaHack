class Schedule < ActiveRecord::Base
	has_many :scheduled_events

	def successful_events
	end

	def failed_events
	end
end
