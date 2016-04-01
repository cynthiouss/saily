class Yacht < ActiveRecord::Base
  belongs_to :country
  has_many :bookings

  # validates :capacity, numericality: { only_integer: true }

  # mount_uploader :photo, PhotoUploader
end

