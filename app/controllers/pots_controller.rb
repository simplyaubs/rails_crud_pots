class PotsController < ApplicationController

  def index
    @pot = Pot.new
    @pots = Pot.all
  end

  def create
    @pot = Pot.new(pot_params)
    if @pot.save

      redirect_to pots_path
    else
      render :index
    end
  end

  def show
    @pot = Pot.find(params[:id])
  end

  def edit
    @pot = Pot.find(params[:id])
  end

  def update
    @pot = Pot.find(params[:id])
    @pot.update_attributes!(pot_params)

    redirect_to pots_path
  end

  private
  def pot_params
    params.require(:pot).permit(:size, :color)
  end

end