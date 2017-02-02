class ComicImage < ApplicationRecord   
  belongs_to :comic
  #belongs_to :shared_image, :class_name => "SharedImage", :foreign_key => "shared_image_id"
end
