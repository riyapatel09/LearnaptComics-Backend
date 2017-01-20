class Api::Mobile::V1::HomeController < ApplicationController
 
  def featured_comics
    @comics =  Comic.all.paginate(:page => params[:page], :per_page => 10)
  end
  
end
