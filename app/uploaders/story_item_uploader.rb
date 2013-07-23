# encoding: utf-8

class StoryItemUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  include CarrierWave::RMagick

  process :convert => 'png'
  process :resize_to_fit => [235, 150]

  # def extension_white_list
  #   %w(png)
  # end
end