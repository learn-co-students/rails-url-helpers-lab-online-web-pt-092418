class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
   
  end

  def activate
   # @student = Student.find_by(:id => params[:id])
   
   @student.update(:active => !@student.active)
   redirect_to show_student_path(@student)
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end