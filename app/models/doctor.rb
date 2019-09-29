class Doctor < ApplicationRecord
    belongs_to :admin
    has_many :appointments
    has_many :patients, through: :appointments

    before_save do |doctor|

    end
end