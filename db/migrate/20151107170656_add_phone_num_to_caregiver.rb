class AddPhoneNumToCaregiver < ActiveRecord::Migration
  def change
  	add_column :caregivers, :phone_num, :integer
  end
end
