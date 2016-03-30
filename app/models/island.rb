class Island < ActiveRecord::Base
  belongs_to :country

  validates :name, uniqueness: true
end
