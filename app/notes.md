Models Planner ~ Appointment Manager

Admin
    has_many patients
    has_many appointments, through patients
    has many doctors they created(created_doctors maybe?) - doctors admin is responsible for

Doctor
    belongs_to admin
    has_many patients, through appointments
    has_many appointments

Patient
    has_many appointments
    has_many doctors through appointments
    belongs_to admin

Appointment
    belongs_to doctor
    belongs_to patient
    (an appointment should validate the doctor associated with it!)