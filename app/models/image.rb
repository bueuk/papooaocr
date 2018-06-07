class Image < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  belongs_to :language
  validates :attachment, file_size: { less_than_or_equal_to: 10.megabytes } 
  validates :language_id, presence: true 
end
