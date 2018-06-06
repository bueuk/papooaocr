class Image < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader
  validates :attachment, presence: true
end
