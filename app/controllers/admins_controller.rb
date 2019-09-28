class AdminsController < ApplicationController

    def index
    end

    def new
        @admin = Admin.new
    end

    def create
        @admin = Admin.new(admin_params)
    end

    def edit
    end

    def update
    end

    def show
    end

    private
    def find_admin
    end

    def admin_params
    end

end