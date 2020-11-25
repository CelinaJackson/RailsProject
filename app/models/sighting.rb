class Sighting < ActiveRecord::Base
    validates :title, presence: true
    validates :description, presence: true 
    validates :location, presence: true 
    validates :user_id, presence: true 
    belongs_to :user
    belongs_to :artist
    belongs_to :piece
    belongs_to :museum
end