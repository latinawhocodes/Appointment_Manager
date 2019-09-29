class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    belongs_to :admin

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :age, presence: true
    validates :email, presence: true
    validates :status, presence: true

    before_save do |patient|
        patient.first_name.titleize
        patient.last_name.titleize
        patient.email.downcase!
    end
end