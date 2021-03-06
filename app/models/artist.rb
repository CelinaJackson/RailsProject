class Artist < ActiveRecord::Base 
    validates :first_name, presence: true 
    validates :last_name, presence: true
    has_many :sightings
    has_many :museums, through :sightings
end 