# Use this file to easily define all of your cron jobs.
#
# It's helpful, but not entirely necessary to understand cron before proceeding.
# http://en.wikipedia.org/wiki/Cron

# Example:
#
# set :output, "/path/to/my/cron_log.log"
#
# every 2.hours do
#   command "/usr/bin/some_great_command"
#   runner "MyModel.some_method"
#   rake "some:great:rake:task"
# end
#
# every 4.days do
#   runner "AnotherModel.prune_old_records"
# end

# Learn more: http://github.com/javan/whenever

every 2.minutes do
end 

# MONDAY
every :monday, :at => '9:00am' do
	runner "ScheduledEvent.check_id_1"
end 

every :monday, :at => '1:00pm' do
	runner "ScheduledEvent.check_id_2"
end 

every :monday, :at => '6:00pm' do
	runner "ScheduledEvent.check_id_3"
end 

every :monday, :at => '10:00pm' do
	runner "ScheduledEvent.check_id_4"
end 


# TUESDAY
every :tuesday, :at => '9:00am' do
	runner "ScheduledEvent.check_id_5"
end 

every :tuesday, :at => '1:00pm' do
	runner "ScheduledEvent.check_id_6"
end 

every :tuesday, :at => '6:00pm' do
	runner "ScheduledEvent.check_id_7"
end 

every :tuesday, :at => '10:00pm' do
	runner "ScheduledEvent.check_id_8"
end 

# WEDNESDAY
every :wednesday, :at => '9:00am' do
	runner "ScheduledEvent.check_id_9"
end 

every :wednesday, :at => '1:00pm' do
	runner "ScheduledEvent.check_id_10"
end 

every :wednesday, :at => '6:00pm' do
	runner "ScheduledEvent.check_id_11"
end 

every :wednesdsay, :at => '10:00pm' do
	runner "ScheduledEvent.check_id_12"
end 

# THURSDAY
every :thursday, :at => '9:00am' do
	runner "ScheduledEvent.check_id_13"
end 

every :thursday, :at => '1:00pm' do
	runner "ScheduledEvent.check_id_14"
end 

every :thursday, :at => '6:00pm' do
	runner "ScheduledEvent.check_id_15"
end 

every :thursday, :at => '10:00pm' do
	runner "ScheduledEvent.check_id_16"
end 

# FRIDAY
every :friday, :at => '9:00am' do
	runner "ScheduledEvent.check_id_17"
end 

every :friday, :at => '1:00pm' do
	runner "ScheduledEvent.check_id_18"
end 

every :friday, :at => '6:00pm' do
	runner "ScheduledEvent.check_id_19"
end 

every :friday, :at => '10:00pm' do
	runner "ScheduledEvent.check_id_20"
end 

# SATURDAY
every :saturday, :at => '9:00am' do
	runner "ScheduledEvent.check_id_21"
end 

every :saturday, :at => '1:00pm' do
	runner "ScheduledEvent.check_id_22"
end 

every :saturday, :at => '6:00pm' do
	runner "ScheduledEvent.check_id_23"
end 

every :saturday, :at => '10:00pm' do
	runner "ScheduledEvent.check_id_24"
end 

# SUNDAY
every :sunday, :at => '9:00am' do
	runner "ScheduledEvent.check_id_25"
end 

every :sunday, :at => '1:00pm' do
	runner "ScheduledEvent.check_id_26"
end 

every :sunday, :at => '6:00pm' do
	runner "ScheduledEvent.check_id_27"
end 

every :sunday, :at => '10:00pm' do
	runner "ScheduledEvent.check_id_28"
end 









