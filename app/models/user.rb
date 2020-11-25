class User < ActiveRecord::Base 
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :user_name, presence: true
    validates :email, uniqueness: true
    validates :password_digest, presence: true
    has_many :sightings
end