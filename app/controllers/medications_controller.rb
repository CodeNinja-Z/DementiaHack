class MedicationsController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  private 

  def medication_params
  	params.require(:medication).permit(:name, :description, :dosage_in_miligrams)
  end 
end
