class SignUpsController < ApplicationController
  def index
    @sign_ups = Sign_up.all
  end

  def show
    @sign_up = Sign_up.find([:id])
  end

  def new
    @sign_up = Sign_up.new
  end

  def create
    @sign_up = Sign_up.new(sign_up_params)
    @sign_up = Sign_up.new(sign_up_params)
    if @sign_up.save
      redirect_to sign_up_path(@sign_up)
    else
      render :new
    end
  end

  def edit
    @sign_up = Sign_up.find([:id])
  end

  def update
    @sign_up = Sign_up.find(params[:id])
    if @sign_up.update(sign_up_params)
      redirect_to sign_up_path(@sign_up)
    else
      render :edit
    end
  end

  def destroy
    Sign_up.find(params[:id]).destroy
    redirect_to sign_ups_url
  end

  private
  def sign_up_params
    params.require(:sign_up).permit(:class_id, :student_id)
  end
end
