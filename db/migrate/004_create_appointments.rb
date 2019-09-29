class CreateAppointments < ActiveRecord::Migration[5.2]
    def change
        create_table :appointments do |t|
            t.datetime :date
            t.datetime :time
            t.text :reason

            t.float :weight
            t.float :temperature
            t.string :blood_pressure

            t.text :medications
            t.text :to_do
            t.text :summary

            t.belongs_to :patient, foreign_key: true
            t.belongs_to :doctor, foreign_key: true

            t.timestamps
        end
    end
end