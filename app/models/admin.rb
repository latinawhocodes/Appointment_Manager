class Admin < ApplicationRecord
    has_many :patients
    has_many :appointments, through: :patients

    has_many :created_doctors, foreign_key: "admin_id", class_name: "Doctor"

    has_secure_password

    before_save do |admin|
        admin.username.downcase!
        admin.email.downcase!
        admin.name.titleize
    end
end