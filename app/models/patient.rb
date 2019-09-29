class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    belongs_to :admin

    before_save do |patient|
        patient.first_name.titleize
        patient.last_name.titleize
        patient.email.downcase!
    end

end