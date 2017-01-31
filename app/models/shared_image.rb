class SharedImage < ApplicationRecord
has_one :comic_image
has_one :comic
mount_uploader :original_image, SharedImagesUploader

before_create :default_name_thumb
before_create :default_name_compressed

def default_name_thumb
    self.thumbnail_image ||= "thumb_"+File.basename(original_image.filename) if original_image
end

def default_name_compressed
    self.compressed_image ||= "compressed_"+File.basename(original_image.filename) if original_image
end

end
