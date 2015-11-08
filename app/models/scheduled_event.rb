class ScheduledEvent < ActiveRecord::Base

	has_many :medications
	belongs_to :scheduled_event

	def self.mark_as_successful?(event)
		if event.event_id? && event.created_at?
			case event
			when ScheduledEvent.where(expected_time: )
				successful = true
			end
		end
	end

	def check_id_1
		if grid_id == 1 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_2
		if grid_id == 2 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_3
		if grid_id == 3 && successful == false
			send_reminder
			forgot_meds_text
		end  
	end 

	def check_id_4
		if grid_id == 4 && successful == false
			send_reminder
			forgot_meds_text
		end  
	end 

	def check_id_5
		if grid_id == 5 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_6
		if grid_id == 6 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_7
		if grid_id == 7 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_8
		if grid_id == 8 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_9
		if grid_id == 9 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 


	def check_id_10
		if grid_id == 10 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_11
		if grid_id == 11 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_12
		if grid_id == 12 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_13
		if grid_id == 13 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_14
		if grid_id == 14 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_15
		if grid_id == 15 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_16
		if grid_id == 16 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_17
		if grid_id == 17 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_18
		if grid_id == 18 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_19
		if grid_id == 19 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_20
		if grid_id == 20 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_21
		if grid_id == 21 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_22
		if grid_id == 22 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_23
		if grid_id == 23 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_24
		if grid_id == 24 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end 

	def check_id_25
		if grid_id == 25 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end

	def check_id_26
		if grid_id == 26 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end

	def check_id_27
		if grid_id == 27 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end  

	def check_id_28
		if grid_id == 28 && successful == false
			send_reminder
			forgot_meds_text
		end 
	end  
  


end
