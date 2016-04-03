class Api::V1::CopOutsController < ApplicationController

  before_action :set_student, only: [:create, :update]

  def create
    @student.cop_out = @student.create_cop_out(cop_out_params)
  end

  def update
    if @student.cop_out.update_attributes(cop_out_params)
      render json: { status: 200 }
    else
      render json: { errors: @student.errors }
    end
  end

  private
  def set_student
    @student = Student.find(params[:student_id])
  end

  def cop_out_params
    params.require(:cop_out).permit(:code, :new_plan, :effective_term, :application_status)
  end
end