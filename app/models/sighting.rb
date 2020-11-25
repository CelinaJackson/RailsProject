class Sighting < ActiveRecord::Base
    validates :title, presence: true
    validates :description, presence: true 
    validates :museum, presence: true 
    validates :artist, presence: true
    validates :user_id, presence: true 
    belongs_to :user
end