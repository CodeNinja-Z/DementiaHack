class SchedulesController < ApplicationController
	def new
		@schedule = Schedule.new
	end

	def create
		@schedule = Schedule.new(schedule_params)
		if @schedule.save
			render :show
		else
			render :new
		end
	end

	def index
		#TODO: all the schedules for a given doctor
	end

	def show
		@schedule = Schedule.find(params[:id])

		@successful_events = @schedule.successful_events
		@failed_events = @schedule.failed_events
	end

	private
	def schedule_params
		params.require(:schedule).permit(:name)
	end
end
