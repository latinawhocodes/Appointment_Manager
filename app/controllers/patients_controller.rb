class PatientsController < ApplicationController
    before_action :require_login
    before_action :find_patient, except: [:index, :new, :create]

    def index
        @patients = Patient.all
    end

    def new
        @patient = Patient.new
    end

    def create
        @patient = current_admin.patients.build(patient_params)
        if @patient.save
            redirect_to patient_path(@patient)
        else
            render :new
        end
    end

    def edit
    end

    def update
        if @patient.update(patient_params)
            redirect_to patient_path(@patient)
        else
            render :edit
        end
    end

    def show
    end

    private
    def find_patient
        @patient = Patient.find_by(id: params[:id])
    end

    def patient_params
        params.require(:patient).permit(
            :first_name,
            :last_name,
            :age,
            :gender,
            :email,
            :insurance,
            :allergies,
            :patient_notes,
            :prescriptions,
            :status,
            :admin_id
        )
    end

end