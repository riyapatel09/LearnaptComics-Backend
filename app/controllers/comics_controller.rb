class ComicsController < ApplicationController
  
  def index
    @comics = Comic.all
  end
  
  def show
    @comic = Comic.find params[:id]
  end
  
  def new
    @comic = Comic.new
  end

  def create
    @comic = Comic.new(comic_params)
 
    if @comic.save
      redirect_to @comic
    else
      render 'new'
    end
  end

  def edit
    @comic = Comic.find(params[:id])
  end

  def update
    @comic = Comic.find(params[:id])
 
    if @comic.update(comic_params)
      redirect_to @comic
    else
      render 'edit'
    end
  end

  def destroy
    @comic = Comic.find(params[:id])
    @comic.destroy
 
    redirect_to comics_path
  end
 
private
  def comic_params
    params.require(:comic).permit(:name, :price, :short_description, :long_description, :pages_count, :size, :paid, :featured, :popular, :published)
  end
  
end