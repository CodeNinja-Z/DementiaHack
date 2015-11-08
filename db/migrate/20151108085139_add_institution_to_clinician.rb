class AddInstitutionToClinician < ActiveRecord::Migration
  def change
  	add_column :clinicians, :institutions, :string
  end
end
