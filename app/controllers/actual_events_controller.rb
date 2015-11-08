class ActualEventsController < ApplicationController
	def new
		@event = ActualEvent.new
	end

	def create
		@event = ActualEvent.new(actual_event_params)
		if @event.save
			render status: :created
		else
			render status: :bad_request
		end
	end

	private
	def actual_event_params
		params.require(:actual_event).permit(:event_id)
	end
end
