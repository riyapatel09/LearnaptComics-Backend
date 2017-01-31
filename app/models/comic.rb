class Comic < ApplicationRecord
  has_many :comic_images

  def temp_image_url
    return "https://learnapt-comics-dev.s3.amazonaws.com/uploads/shared_image/199/thumbnail_image/thumb_ch2_1_2.jpg"
  end
end
