class Museum < ActiveRecord::Base
    validates :location, presence: true 
    validates :name, presence: true 
end 