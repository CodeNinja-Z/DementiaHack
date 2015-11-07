class Schedule < ActiveRecord::Base
	has_many :scheduled_events
end
