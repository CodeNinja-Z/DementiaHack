class MedicationsController < ApplicationController
  def create
    @medication = Medication.new(medication_params)
  end

  def new
    @medication = Medication.new

    # day_of_week_0 
    # day_of_week_1
    # day_of_week_2
    # day_of_week_3
    # day_of_week_4
    # day_of_week_5
    # day_of_week_6

    # time_of_day_0
    # time_of_day_1
    # time_of_day_2
    # time_of_day_3
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
