class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    accepts_nested_attributes_for :doctor
    validates_associated :doctor
    scope :by_doctor, -> (doctor_id) {where("doctor_id = ?", doctor_id)}

    validates :date, presence: true
    validates :time, presence: true
    validates :patient_id, presence: true

    def username
        @username ||= self.patient.try(:admin).try(:username)
    end
end