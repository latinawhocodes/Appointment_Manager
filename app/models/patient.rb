class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments
    belongs_to :admin

    before_save do |doctor|

    end
end