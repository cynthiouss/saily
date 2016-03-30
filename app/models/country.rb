class Country < ActiveRecord::Base
  has_many :yachts
  has_many :islands

  validates :name, uniqueness: true, exclusion: { in: [nil] }

  def self.names
    names = ["Select a country"]
    Country.all.each do |c|
      names<<c.name
    end
    names
  end

end
