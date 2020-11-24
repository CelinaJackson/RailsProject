class Piece < ActiveRecord::Base
    validates :artist_id, presence: true
    belongs_to :artist  
end 