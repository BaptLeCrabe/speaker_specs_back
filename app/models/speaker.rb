class Speaker < ApplicationRecord
  belongs_to :conceptor
  belongs_to :acoustic_load
  has_and_belongs_to_many :drivers

  serialize :images
  serialize :driver_sizes, Array
  mount_uploaders :images, ImageUploader

  mount_uploader :plan_file, FileUploader
  mount_uploader :akabak_file, FileUploader
  mount_uploader :hornsrep_file, FileUploader
  mount_uploader :glb_file, FileUploader
end
