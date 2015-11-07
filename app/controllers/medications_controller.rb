class MedicationsController < ApplicationController
  def create
    @medication = Medication.new(medication_params)
  end

  def index
    @medications = Medication.all
  end

  def show
    @medication = Medication.find(params[:id])
  end

  def destroy
    @medication = Medication.find(params[:id])
    @medication.destroy
  end 

  private 

  def medication_params
  	params.require(:medication).permit(:name, :description, :dosage_in_milligrams, :scheduled_event_id)
  end 
end
