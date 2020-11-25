class SightingsController < ApplicationController

    private 

    def sighting_params 
        params.require(:sighting).permit(:title, :location, :description, :artist_name, :title_of_piece, :user_id, :museum_id, :artist_id, :piece_id)
    end
end 