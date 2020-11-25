class SightingsController < ApplicationController

    private 

    def sighting_params 
        params.require(:sighting).permit(:title, :museum, :description, :artist, :user_id)
    end
end 