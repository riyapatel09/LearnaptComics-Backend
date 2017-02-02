class ComicImagesController < ApplicationController
  def index
    create
  end

  def show
    @comicImage = ComicImage.find(params[:id])
  end

  def edit
  end

  def create
    @comic = Comic.find(params[:comic_id])
    @comicImage = ComicImage.new
    @comicImage.comic_id = @comic.id
    @sharedImage = SharedImage.create!
    @comicImage.shared_image_id = @sharedImage.id
    
    if @comicImage.save
      redirect_to comic_comic_image_path(@comic.id,@comicImage.id)
    else
      render 'new'
    end
  
  end
end
