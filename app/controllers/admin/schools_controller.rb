class Admin::SchoolsController < ApplicationController
    def new
      @school = School.new
    end
  
    def create
      @school = School.new(school_params)
      if @school.save
        redirect_to @school
      else
        render 'new'
      end
    end
  
    def destroy
      @school = School.find(params[:id])
      @school.destroy
      redirect_to schools_path
    end
  
    private
  
    def school_params
      params.require(:school).permit(:address, :name, :code, :school_type)
    end
  end
  