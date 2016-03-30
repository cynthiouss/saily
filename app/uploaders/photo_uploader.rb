# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :standard do
    resize_to_fit 950, 350
  end

  version :bright_face do
    cloudinary_transformation effect: "brightness:30", radius: 20,
      width: 950, height: 350, crop: :thumb, gravity: :face
  end
end
