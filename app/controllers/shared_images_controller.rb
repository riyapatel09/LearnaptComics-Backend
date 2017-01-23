class SharedImagesController < ApplicationController
  def index
    @sharedImages = SharedImage.all
  end
  
  def show
    @sharedImage = SharedImage.find(params[:id])
  end
  
  def new
    @sharedImage = SharedImage.new
    #@comic = Comic.new
  end

  def create
    @sharedImage = SharedImage.new(shared_image_params)
 
    if @sharedImage.save
      redirect_to @sharedImage
    else
      render 'new'
    end
  end

  def edit
    @sharedImage = SharedImage.find(params[:id])
  end

  def update
    @sharedImage = SharedImage.find(params[:id])
 
    if @sharedImage.update(shared_image_params)
      redirect_to @sharedImage
    else
      render 'edit'
    end
  end

  def destroy
    @sharedImage = SharedImage.find(params[:id])
    @sharedImage.destroy
 
    redirect_to sharedImages_path
  end

  private
  def shared_image_params
    params.require(:shared_image).permit(:original_image)
  end
end
