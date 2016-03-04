class Api::V1::NotesController < ApplicationController

  before_action :set_student, only: [:index, :create]

  def index
    @notes = @student.notes
    render json: @notes, include: [:user]
  end

  def create
    note = @student.notes.new(notes_params)
    if note.save
      render json: note
    end
  end

  private
  def notes_params
    params.require(:note).permit(:message)
      .merge(:advisor_id => @current_user.id)
  end

  def set_student
    @student = Student.find(params[:student_id])
  end
end