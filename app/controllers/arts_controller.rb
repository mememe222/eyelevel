class ArtsController < ApplicationController
  def index
    @arts = Art.all
  end
  
  def new
    @arts = Art.new
  end

  def create
    Art.create(art_params)
  end

  private

  def art_params
    params.require(:art).permit(:title, :memo)
  end

end
