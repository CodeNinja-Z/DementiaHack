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
	runner ""
end 

every :monday, :at => '1:00pm' do
	runner ""
end 

every :monday, :at => '6:00pm' do
	runner ""
end 

every :monday, :at => '10:00pm' do
	runner ""
end 


# TUESDAY
every :tuesday, :at => '9:00am' do
	runner ""
end 

every :tuesday, :at => '1:00pm' do
	runner ""
end 

every :tuesday, :at => '6:00pm' do
	runner ""
end 

every :tuesday, :at => '10:00pm' do
	runner ""
end 

# WEDNESDAY
every :wednesday, :at => '9:00am' do
	runner ""
end 

every :wednesday, :at => '1:00pm' do
	runner ""
end 

every :wednesday, :at => '6:00pm' do
	runner ""
end 

every :wednesdsay, :at => '10:00pm' do
	runner ""
end 





