class AppointmentsController < ApplicationController

    def index
    end

    def new
    end

    def create
    end

    def edit
    end

    def update
    end

    private
    def find_appointment
    end

    def find_doctor
    end

    def find_patient
    end

    def appointment_params
        params.require(:appointment).permit(
            :date,
            :time,
            :reason,
            :status,
            :weight,
            :temperature,
            :blood_pressure,
            :medications,
            :summary,
            :patient_id,
            :doctor_id
        )
    end
end