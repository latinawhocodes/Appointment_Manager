class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    before_save do |doctor|

    end
end