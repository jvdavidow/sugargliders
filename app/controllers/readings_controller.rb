class ReadingsController < ApplicationController
  def index
    if params[:q]
      @readings = [Reading.first]
    else
      @readings = Reading.all
    end
  end

  def review
    @reading = Reading.new(params[:reading])
  end

  def show
    @reading = Reading.find(params[:id])
  end

  def new
    @reading = Reading.new
  end

  def edit
    @reading = Reading.find(params[:id])
    # if @reading.save ?
    #  redirect_to @feed
    # else
    #  render @new
    # end
  end
  
  def create
    @reading = Reading.new(params[:reading])
    if @reading.save
      redirect_to readings_path
    else
      render :new
    end
  end
  
  def destroy
    @reading = Reading.find(params[:id])
    @reading.destroy
  end
end
