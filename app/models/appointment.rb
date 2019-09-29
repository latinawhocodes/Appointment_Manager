class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    before_save do |doctor|
        doctor.first_name.titleize
        doctor.last_name.titleize
        doctor.specialty.titleize
        doctor.gender.titleize
        doctor.email.downcase!
    end
end