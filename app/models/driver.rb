class Driver < ApplicationRecord
  belongs_to :brand
  has_and_belongs_to_many :speakers

  serialize :images
  mount_uploaders :images, ImageUploader

  mount_uploader :doc_files, FileUploader
  mount_uploader :glb_file, FileUploader
  has_one :thiele_small
  accepts_nested_attributes_for :thiele_small
end
