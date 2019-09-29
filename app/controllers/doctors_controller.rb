class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new
    end

    def create
        find_doctor
        @doctor = Doctor.new(doctor_params)
        if @doctor.save
            redirect_to doctor_path(@doctor)
        else
            render :new
        end
    end

    def edit
        find_doctor
    end

    def update
        find_doctor
        if @doctor.update(doctor_params)
            redirect_to doctor_path(@doctor)
        else
            render :edit
        end
    end

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