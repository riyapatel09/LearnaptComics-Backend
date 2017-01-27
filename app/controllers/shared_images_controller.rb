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
      redirect_to @sharedImage, notice: 'SharedImage was successfully created.'
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
      redirect_to @sharedImage, notice: 'SharedImage attachment was syuccessfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    @sharedImage = SharedImage.find(params[:id])
    @sharedImage.destroy
 
    redirect_to sharedImages_path, notice: 'SharedImage was successfully destroyed.'
  end

  private

  def set_sharedImage
    @sharedImage = SharedImage.find(params[:id])
  end
  def shared_image_params
    params.require(:shared_image).permit(:original_image)
  end
end
