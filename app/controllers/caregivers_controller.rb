class CaregiversController < ApplicationController

before_filter :load_patient
	def show
  	@caregiver = Caregiver.find(params[:id])
	end

  def create
  	@caregiver = @patient.caregivers.build(caregiver_params)

  	if @caregiver.save
      @caregiver.send_initial_caregiver_text
  		redirect_to patient_path(@patient), notice: 'Caregiver created successfully'
  	else
  		render 'patients/show'
  	end
  end

  def destroy
  	@caregiver = Caregiver.find(params[:id])
  	@caregiver.destroy
  end

  def send_text_message(body)
    account_sid = ENV["TWILIO_ACCOUNT_SID"]
    auth_token = ENV["TWILIO_AUTH_TOKEN"]
    our_twilio_num = ENV["TWILIO_PHONE_NUMBER"]

    @client = Twilio::REST::Client.new account_sid, auth_token

    message = @client.messages.create(
      :from => "#{our_twilio_num}",
      :to   => phone_number,
      :body => body
    )
  end

  def wrong_meds_text
    "#{patient.full_name} has taken the wrong medication."

  end 
  
  def caregiver_forgot_meds_text_sender
    caregiver.send_text_message(forgot_meds_text)
    end
 


	private

	def caregiver_params
		params.require(:caregiver).permit(:first_name, :last_name, :email, :phone_number, :relationship)
	end

	def load_patient
	@patient = Patient.find(params[:patient_id])
end
end
