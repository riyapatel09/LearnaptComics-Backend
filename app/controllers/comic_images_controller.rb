class ComicImagesController < ApplicationController
  def index
    create
  end

  def show
    @comicImage = ComicImage.find(params[:id])
  end

  def edit
    @comic_image = ComicImage.find(params[:id])
    @sharedImage = @comic_image.shared_image
    @comic = Comic.find(params[:comic_id])
  end

  def update
    @comic_image = ComicImage.find(params[:id])
    @sharedImage = @comic_image.shared_image
    
    original_file = params[:original_image]
    @sharedImage.original_image = original_file
    
    order_no = params[:order]
    @comic_image.order = order_no
    
    @comic = Comic.find(params[:comic_id])
    if @sharedImage.save && @comic_image.save
      redirect_to comic_path(@comic.id), notice: 'SharedImage attachment was syuccessfully updated.'
    else
      render 'edit'
    end
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
