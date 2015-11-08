class AddRoleToClinician < ActiveRecord::Migration
  def change
  	add_column :clinicians, :role, :string
  end
end
