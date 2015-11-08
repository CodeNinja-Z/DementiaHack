class CaregiversController < ApplicationController

before_filter :load_patient
	def show
  	@caregiver = Caregiver.find(params[:id])
	end

  def create
  	@caregiver = @patient.caregivers.build(caregiver_params)

  	if @caregiver.save
  		redirect_to patient_path(@patient), notice: 'Caregiver created successfully'
  	else 
  		render 'patients/show'
  	end 
  end

  def destroy
  	@caregiver = Caregiver.find(params[:id])
  	@caregiver.destroy
  end


	private 
	
	def caregiver_params
		params.require(:caregiver).permit(:first_name, :last_name, :email, :phone_number)
	end 

	def load_patient
	@patient = Patient.find(params[:patient_id])
end 


end 

