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
    label = Label.find(params[:id])
    if label.update_attributes(label_params)
      render json: label
    else
      render json: {errors: label.errors}, status: 422
    end
  end

  private
  def label_params
    params.require(:label).permit(:name, :description, :color)
  end
end