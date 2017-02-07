class ComicImage < ApplicationRecord   
  belongs_to :comic
  belongs_to :shared_image
end
