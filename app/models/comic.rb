class Comic < ApplicationRecord
  has_many :comic_images

  def temp_image_url
    return "https://s3.amazonaws.com/learnapt-comics-dev/uploads/shared_image/original_image/129/thumb_b3.jpg"
  end
end
