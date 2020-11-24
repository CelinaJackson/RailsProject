class User < ActiveRecord::Base 
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :user_name, presence: true
    validates :email, uniqueness: true
    validates :password, presence: true
    has_many :sightings
    has_many :pieces, through :sightings
    has_many :artists, through :sightings 
    has_many :museums, through :sightings
end