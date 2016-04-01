class Api::V1::StudentsLabelsController < ApplicationController

    before_action :set_student

    def index
        render json: @student.labels
    end

    def create
        label = Label.find(params[:id])
        @student.labels << label
        if @student.save
            render json: { status: 200 }
        else
            render json: { errors: @student.errors }
        end
    end

    def destroy
        binding.pry

    end

    private
    def set_student
        @student = Student.find(params[:student_id])
    end    
end