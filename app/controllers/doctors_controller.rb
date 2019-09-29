class DoctorsController < ApplicationController

    private
    def doctor_params
        params.require(:doctor).permit(
            :first_name,
            :last_name,
            :specialty,
            :gender,
            :email,
            :admin_id
        )
    end
end