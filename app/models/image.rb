class Image < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :attachment, file_size: { less_than_or_equal_to: 10000.kilobytes } 
end
