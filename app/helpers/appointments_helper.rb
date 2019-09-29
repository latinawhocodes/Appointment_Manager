module AppointmentsHelper

    def doctor_form(form_builder)
        #had a few problems with this form and referenced this from StackOverflow
        if @doctor
            content_tag(:h2,"Appointments for Dr. #{@doctor.last_name}")
        else
            render partial: "doctorform", locals: { d: form_builder }
        end
    end
end