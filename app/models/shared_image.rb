class SharedImage < ApplicationRecord
has_one :comic_image
has_one :comic
mount_uploader :original_image, SharedImagesUploader
end
