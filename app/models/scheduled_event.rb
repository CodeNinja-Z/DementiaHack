class ScheduledEvent < ActiveRecord::Base
	has_many :medications
	belongs_to :schedule 
end
