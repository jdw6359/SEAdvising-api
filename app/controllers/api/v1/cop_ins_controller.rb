class Api::V1::CopInsController < ApplicationController

  before_action :set_student, only: [:create, :update]

  def create
    @student.cop_in = @student.create_cop_in(cop_in_params)
    render json: { status: 200 }
  end

  def update
    if @student.cop_in.update_attributes(cop_in_params)
      render json: { status: 200 }
    else
      render json: { errors: @student.errors }
    end
  end

  private
  def set_student
    @student = Student.find(params[:student_id])
  end

  def cop_in_params
    params.require(:cop_in).permit(:effective_term, :former_plan)
  end
end