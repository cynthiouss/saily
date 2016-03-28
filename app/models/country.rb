class Country < ActiveRecord::Base
  has_many :yachts
  has_many :islands

  validates :name, uniqueness: true, exclusion: { in: [nil] }
end
