class AddBooleanValueToTimeOfDay < ActiveRecord::Migration
  def change
  	remove_column :medications, :time_of_day, :string, array:true, default:[]
  	remove_column :medications, :day_of_week, :string, array:true, default:[]
  	add_column :medications, :time_of_day_0, :boolean
  	add_column :medications, :time_of_day_1, :boolean
  	add_column :medications, :time_of_day_2, :boolean
  	add_column :medications, :time_of_day_3, :boolean
  	add_column :medications, :day_of_week_0, :boolean
  	add_column :medications, :day_of_week_1, :boolean
  	add_column :medications, :day_of_week_2, :boolean
  	add_column :medications, :day_of_week_3, :boolean
  	add_column :medications, :day_of_week_4, :boolean
  	add_column :medications, :day_of_week_5, :boolean
  	add_column :medications, :day_of_week_6, :boolean
  end
end
