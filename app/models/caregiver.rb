class Caregiver < ActiveRecord::Base
	belongs_to :patient

	def initial_caregiver_text
    "Hello, #{patient.full_name} has added you to their caregiver list."
 	end 
 	def send_initial_caregiver_text
    self.send_text_message(initial_caregiver_text)
  end 

  def wrong_meds_text
    "#{patient.full_name} has taken the wrong medication."
  end 
  def caregiver_forgot_meds_text_sender
    caregivers.each do |caregiver|
      caregiver.send_text_message(forgot_meds_text)
    end
  end


end
