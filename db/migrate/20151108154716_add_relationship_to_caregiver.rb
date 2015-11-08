class AddRelationshipToCaregiver < ActiveRecord::Migration
  def change
    add_column :caregivers, :relationship, :string
  end
end
