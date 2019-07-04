class TubuyakisController < ApplicationController
  before_action :set_tubuyaki, only: [:edit,:destroy,:update]

  def index
    @tubuyaki = Tubuyaki.all
  end

  def new
    @tubuyaki = Tubuyaki.new
  end

  def create
    @tubuyaki = Tubuyaki.new(tubuyaki_params)
    if @tubuyaki.save
      redirect_to tubuyakis_path, notice: "つぶやきました！"
    else
      render 'new'
    end
  end

  def edit
    @tubuyaki = Tubuyaki.find(params[:id])
  end

  def update
    if @tubuyaki.update(tubuyaki_params)
      redirect_to tubuyakis_path, notice: "つぶやきを編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @tubuyaki = Tubuyaki.find(params[:id])
    @tubuyaki.destroy
    redirect_to tubuyakis_path, notice: "つぶやきを消しました！"
  end

  private

  def tubuyaki_params
    params.require(:tubuyaki).permit(:content)
  end

  def set_tubuyaki
    @tubuyaki = Tubuyaki.find(params[:id])
  end

end
