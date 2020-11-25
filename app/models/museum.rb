class Museum < ActiveRecord::Base
    validates :location, presence: true 
    validates :name, presence: true
    has_many :sightings
    has_many :artists, through :sightings
end 