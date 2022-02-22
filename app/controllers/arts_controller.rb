class ArtsController < ApplicationController
  def index
    @arts = Art.all.order("created_at DESC")
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

  def destroy
    @art = Art.find(params[:id])
    if @art.destroy
      redirect_to action: :index
    end
  end

  def edit
    @arts = Art.find(params[:id])
  end

  def update
    @arts = Art.find(params[:id])
    if @arts.update(art_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def art_params
    params.require(:art).permit(:title, :memo, {images: []})
  end

end
