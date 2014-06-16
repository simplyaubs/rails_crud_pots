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

  private
  def pot_params
    params.require(:pot).permit(:size, :color)
  end

end