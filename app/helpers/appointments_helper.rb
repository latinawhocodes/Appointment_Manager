module AppointmentsHelper
    def doctor_form(form_builder)
        #had a few problems with this form and referenced this from StackOverflow
        render partial: "doctorform", locals: { d: form_builder }
    end
end