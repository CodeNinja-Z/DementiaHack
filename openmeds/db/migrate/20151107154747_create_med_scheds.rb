class CreateMedScheds < ActiveRecord::Migration
  def change
    create_table :med_scheds do |t|
      t.string :name
      t.text :description
      t.integer :dosage
      t.time :expected_time

      t.timestamps null: false
    end
  end
end
