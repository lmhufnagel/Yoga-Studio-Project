class PracticesController < ApplicationController
  def index
    @practices = Practice.all
  end

  def show
    @practice = Practice.find([:id])
  end

  def new
    @practice = Practice.new
  end

  def create
    @practice = Practice.new(practice_params)
    if @practice.save
      redirect_to practice_path(@practice)
    else
      render :new
    end
  end

  def edit
    @practice = Practice.find([:id])
  end

  def update
    @practice = Practice.find(params[:id])
    if @practice.update(practice_params)
      redirect_to practice_path(@practice)
    else
      render :edit
    end
  end

  def destroy
    Practice.find(params[:id]).destroy
    redirect_to practices_url
  end

  private
  def practice_params
    params.require(:practice).permit(:title, :teacher, :style, :length, :day, :time)
  end
end
