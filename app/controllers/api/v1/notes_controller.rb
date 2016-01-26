class Api::V1::NotesController < ApplicationController

	skip_before_action :authenticate_request

	before_action :set_student, only: [:index, :create]

	def index
		@notes = @student.notes
		render json: @notes, include: [:user]
	end

	def create
		@student.notes.create(notes_params)
	end

	private
	def notes_params
		params.require(:notes).permit(:message)
	end

	def set_student
		@student = Student.find(params[:student_id])
	end
end