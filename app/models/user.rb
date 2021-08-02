class User < ApplicationRecord
    has_many :reviews
    has_many :hikes, through: :reviews
    has_secure_password
    validates :name, :email_address, presence: true 
    validates :email_address, uniqueness: true
end
