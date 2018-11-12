class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  # Remove everything else

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :card do
    cloudinary_transformation :width=> 300, :height=>173, :radius=>10, :effect=>"gradient_fade:10", :crop=>"fill"
  end
end
