class AddAttributesToMedication < ActiveRecord::Migration
  def change
  	add_column :medications, :day_of_week, :string
  	add_column :medications, :time_of_day, :string
  end
end
