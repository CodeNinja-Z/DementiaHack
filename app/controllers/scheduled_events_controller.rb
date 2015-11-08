class ScheduledEventsController < ApplicationController
	def new
		@event = ScheduledEvent.new
	end

	def create
		@event = ScheduledEvent.new(scheduled_event_params)
		if @event.save
			redirect_to schedules_path
		else
			render :new
		end
	end

	private
	def scheduled_event_params
		params.require(:scheduled_event).permit(:expected_time)
	end
end
