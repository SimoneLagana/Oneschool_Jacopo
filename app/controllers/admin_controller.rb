class AdminController < ApplicationController
    def index
        @admins = Admin.all
    end
    def signup       
    end

    def create
        admin_params = { name: params[:name], surname: params[:surname],CF: params[:CF], mail: params[:email],password: params[:password] }
        
        @admin = Admin.new(admin_params)
        if @admin.save
            redirect_to "/oneschool"
        else
            flash[:alert] = "Si è verificato un errore durante la creazione del post."
        end
    end
end
