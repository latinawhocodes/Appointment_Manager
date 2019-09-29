class SessionsController < ApplicationController

    def index
    end

    def new
    end

    def create
        find_admin
        if @admin.authenticate(params[:admin][:password])
            session[:admin_id] = @admin.id
            redirect_to admin_path(@admin.id)
        else
            redirect_to login_path
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end

    private
    def find_admin
        @admin = Admin.find_by(username: params[:admin][:username])
    end
end