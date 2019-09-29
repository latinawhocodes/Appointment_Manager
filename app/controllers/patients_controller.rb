class PatientsController < ApplicationController

    def index
        @patients = Patient.all
        #ideally -> update this so patients are shown as: LASTNAME, FIRSTNAME, AGE
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
        find_patient
    end

    def update
        find_patient
        if @patient.update(patient_params)
            redirect_to patient_path(@patient)
        else
            render :edit
        end
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