class Island < ActiveRecord::Base
  belongs_to :country

  validates :name, :country, uniqueness: true, exclusion: { in: [nil] }
end
