class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
    # @student = Student.find(params[:id])
  end

  def show
  end

  def activate
    @student = Student.find(params[:id])
    if @student.active
      @student.active = false
    else
      @student.active = true
    end
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end