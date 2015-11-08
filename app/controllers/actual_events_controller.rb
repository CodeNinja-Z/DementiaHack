class ActualEventsController < ApplicationController
	def new
		@event = ActualEvent.new
	end

	def create
		@event = ActualEvent.new(actual_event_params)
		mark_success?(@event)

		if @event.save
			render status: :created
		else
			render status: :bad_request
		end
	end

	def mark_success?(actual_event)
		ScheduledEvent.mark_as_successful?(actual_event)
	end

	private
	def actual_event_params
		params.require(:actual_event).permit(:event_id)
	end
end
