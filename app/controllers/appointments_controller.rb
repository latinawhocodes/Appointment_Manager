class AppointmentsController < ApplicationController

    def index
        @appointments = @doctor.appointments if params[:doctor_id] && find_doctor

        @appointments = @patient.appointments if params[:patient_id] && find_patient

        @appointments = Appointment.all
    end

    def new
        if params[:doctor_id] && find_doctor
            @appointment = @doctor.appointments.build
        else
            @appointment = Appointment.new
            @appointment.build_doctor
        end
    end

    def create
        if params[:doctor_id] && find_doctor
            @appointment = @doctor.appointments.build(appointment_params)
        else
            @appointment = Appointment.new(appointment_params)
        end
    end

    private
    def find_appointment
        @appointment = Appointment.find(params[:id])
    end

    def find_doctor
        @doctor = Doctor.find_by_id(params[:doctor_id])
    end

    def find_patient
        @patient = Patient.find_by_id(params[:patient_id])
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