class ApplicationController < ActionController::Base

    private
    def current_admin
        @current_admin ||= Admin.find_by(id: session[:admin_id]) unless session[:admin_id].nil?
    end

    def logged_in?
        !!current_admin
    end

    def require_login
        redirect_to login_path if !logged_in?
    end
end
