class AdminsController < ApplicationController

    def index
        @admins = Admin.all
    end

    def new
        @admin = Admin.new
    end

    def create
        @admin = Admin.new(admin_params)
        if @admin.save
            session[:admin_id] = @admin.id
            redirect_to admin_path(@admin)
        else
            render :new
        end
    end

    def edit
        find_admin
    end

    def update
        if @admin.update(admin_params)
            redirect_to admin_path(@admin)
        else
            render :edit
        end
    end

    def show
        find_admin
    end

    private
    def find_admin
        @admin = Admin.find_by(id: params[:id])
    end

    def admin_params
        params.require(:admin).permit(
            :username,
            :name,
            :email,
            :password,
            :employee_id
        )
    end

end