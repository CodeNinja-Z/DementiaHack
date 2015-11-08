class Prescription < ActiveRecord::Base
	belongs_to :scheduled_event
	belongs_to :medication

	def prescribe
		prescription = Prescription.find(params[:prescription_id])
		medication = Medication.find(params[:medication_id])
		scheduled_event = ScheduledEvent.find(prescription.scheduled_event_id])
  

		if medication.time_of_day_0 && medication.day_of_week_0 
			medication.scheduled_event.grid_id = 1  
		end 

		if medication.time_of_day_1 && medication.day_of_week_0 
			scheduled_event.grid_id = 2
			medication = medication_id
		end 

		if medication.time_of_day_2 && medication.day_of_week_0 
			scheduled_event.grid_id = 3
		end 

		if medication.time_of_day_3 && medication.day_of_week_0 
			scheduled_event.grid_id = 4
		end 

		if medication.time_of_day_0 && medication.day_of_week_1 
			scheduled_event.grid_id = 5
		end 

		if medication.time_of_day_1 && medication.day_of_week_1 
			scheduled_event.grid_id = 6
		end 

		if medication.time_of_day_2 && medication.day_of_week_1 
			scheduled_event.grid_id = 7
		end 

		if medication.time_of_day_3 && medication.day_of_week_1 
			scheduled_event.grid_id = 8
		end 

		if medication.time_of_day_0 && medication.day_of_week_2 
			scheduled_event.grid_id = 9
		end 

		if medication.time_of_day_1 && medication.day_of_week_2 
			scheduled_event.grid_id = 10
		end 

		if medication.time_of_day_2 && medication.day_of_week_2 
			scheduled_event.grid_id = 11
		end 

		if medication.time_of_day_3 && medication.day_of_week_2 
			scheduled_event.grid_id = 12
		end 


	end 

end
