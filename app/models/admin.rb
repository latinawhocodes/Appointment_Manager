class Admin < ApplicationRecord
    has_many :patients
    has_many :appointments, through: :patients

    has_secure_password

    before_save do |admin|
        admin.username.downcase!
        admin.email.downcase!
        admin.name.titleize
    end
end