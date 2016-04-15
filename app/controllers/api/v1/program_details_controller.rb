class Api::V1::ProgramDetailsController < ActionController::Base

  before_action :set_student, only: [:create, :update]

  def create
    @student.program_detail = @student.create_program_detail(program_detail_params)
    render json: { status: 200 }
  end

  def update
    if @student.program_detail.update_attributes(program_detail_params)
      render json: { status: 200 }
    else
      render json: { errors: @student.errors }
    end
  end

  private
  def program_detail_params
    params.require(:program_detail).permit(:academic_plan, :application_domain,
      :application_domain_submitted_date, :minor, :minor_submitted_date)
  end

  def set_student
    @student = Student.find(params[:student_id])
  end
end