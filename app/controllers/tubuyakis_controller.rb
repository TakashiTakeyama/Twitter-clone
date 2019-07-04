class TubuyakisController < ApplicationController

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

  def destroy
    @tubuyaki = Tubuyaki.find(params[:id])
    @tubuyaki.destroy
    redirect_to tubuyakis_path, notice: "つぶやきを消しました！"
  end

  private

  def tubuyaki_params
    params.require(:tubuyaki).permit(:content)
  end

end
