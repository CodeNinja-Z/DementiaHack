class MedicationsController < ApplicationController
  def create
    @medication = Medication.new(medication_params)

    if @medication.save
      redirect_to medications_path
    else 
      render :new
    end 
  end

  def new
    @medication = Medication.new
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
  	params.require(:medication).permit(:name, :description, :dosage_in_milligrams, :day_of_week => [], :time_of_day => [])
  end 
end
