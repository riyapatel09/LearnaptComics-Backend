class Comic < ApplicationRecord
  has_many :comic_images

  def temp_image_url
    return "http://cdn.blackenterprise.com/wp-content/blogs.dir/1/files/2012/10/google_logo.jpg"
  end
end
