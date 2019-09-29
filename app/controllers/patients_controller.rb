class PatientsController < ApplicationController


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