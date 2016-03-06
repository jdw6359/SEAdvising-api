class Api::V1::LabelsController < ApplicationController

  def index
    @labels = Label.all
    render json: @labels
  end

  def show
    @label = Label.find(params[:id])
    render json: @label
  end

  def create
    @label = Label.new(label_params)
    if @label.save
      render json: @label, status: 200
    else
      render json: @label.errors, status: 422
    end
  end

  def update
    binding.pry
  end

  private
  def label_params
    params.require(:label).permit(:name, :description, :color)
  end
end