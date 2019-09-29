class Admin < ApplicationRecord
    has_many :patients
    has_many :appointments, through: :patients

    has_secure_password
end