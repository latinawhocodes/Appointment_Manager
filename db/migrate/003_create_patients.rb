class CreatePatients < ActiveRecord::Migration[5.2]
    def change
        create_table :patients do |t|
            t.string :first_name
            t.string :last_name
            t.integer :age
            t.string :gender

            t.string :email
            t.string :insurance
            t.text :allergies
            t.text :patient_notes
            t.text :prescriptions

            t.string :status

            t.integer :admin_id
            t.timestamps
        end
    end
end
