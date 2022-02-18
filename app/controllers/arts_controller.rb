class ArtsController < ApplicationController
  def index
    @arts = Art.all
  end
  
  def new
    @arts = Art.new
  end

  def create
    if Art.create(art_params)
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @art = Art.find(params[:id])
  end

  private

  def art_params
    params.require(:art).permit(:title, :memo, {images: []})
  end

end
