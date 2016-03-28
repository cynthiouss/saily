class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :yacht
  has_many :islands, through: :yachts

  validates :user, presence: true
  validates :yacht, uniqueness: true, exclusion: { in: [nil] }
end
