class AppointmentsController < ApplicationController
    before_action :require_login
    before_action :find_doctor
    before_action :find_patient

    def index
        if params[:doctor_id]
            @appointments = @doctor.appointments
        elsif params[:patient_id]
            @appointments = @patient.appointments
        else
            @appointments = Appointment.all
        end
    end

    def new
        if params[:doctor_id]
            @appointment = @doctor.appointments.build
        else
            @appointment = Appointment.new
            @appointment.build_doctor
        end
    end

    def create
        if params[:doctor_id]
            @appointment = @doctor.appointments.build(appointment_params)
        else
            @appointment = Appointment.new(appointment_params)
        end
        binding.pry
         if @appointment.save
            redirect_to appointment_path(@appointment)
        else
            render :new
        end
    end

    def show
        find_appointment
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
            :weight,
            :temperature,
            :blood_pressure,
            :medications,
            :summary,
            :patient_id,
            :doctor_id,
            doctor_attributes:[
                :first_name,
                :last_name,
                :specialty,
                :gender,
                :email,
                :admin_id
            ]
        )
    end
end