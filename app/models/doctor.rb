class Doctor < ApplicationRecord
    belongs_to :admin
    has_many :appointments
    has_many :patients, through: :appointments

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :specialty, presence: true

    before_save do |doctor|
        doctor.first_name.titleize
        doctor.last_name.titleize
        doctor.specialty.titleize
        doctor.gender.titleize
        doctor.email.downcase!
    end
end