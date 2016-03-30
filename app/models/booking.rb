class Booking < ActiveRecord::Base
  belongs_to :user
  belongs_to :yacht
  has_many :islands, through: :yachts

  validates :user_id, :yacht_id, presence: true
end
