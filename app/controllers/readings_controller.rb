class ReadingsController < ApplicationController
  def index
    @readings = Reading.all
  end

  def show
    @reading = Reading.find(params[:id])
  end

  def new
    @reading = Reading.new
  end

  def edit
    @reading = Reading.find(params[:id])
  end
  
  def create
    @reading = Reading.new(params[:reading])
  end
  
  def destroy
    @reading = Reading.find(params[:id])
    @reading.destroy
  end
end
