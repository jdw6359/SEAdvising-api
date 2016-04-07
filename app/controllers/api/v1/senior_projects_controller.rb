class Api::V1::SeniorProjectsController < ActionController::Base

  before_action :set_student, only: [:create, :update]

  def create
    binding.pry
    @student.senior_project = @student.create_senior_project(senior_project_params)
  end

  def update
    if @student.senior_project.update_attributes(senior_project_params)
      render json: { status: 200 }
    else
      render json: { errors: @student.errors }
    end
  end

  private
  def senior_project_params
    params.require(:senior_project).permit(:status, :end_term, :cert_term_projected,
      :cert_term_certified, :ceremony_term, :grad_app_submitted, :grad_app_submitted_date)
  end

  def set_student
    @student = Student.find(params[:student_id])
  end
end