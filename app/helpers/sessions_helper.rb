module SessionsHelper

    def display_welcome
        if logged_in?
            content_tag(:h2, "Welcome, #{@admin.name.titlecase}!")
        end
    end

    def display_admin_details
        content_tag(:h4, "#{@admin.email.downcase}")
        content_tag(:h4, "#{@admin.username.downcase}")
        content_tag(:h5, "#{@admin.employee_id}")
    end


end