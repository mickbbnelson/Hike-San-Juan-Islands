class Hike < ApplicationRecord
    belongs_to :island
    has_many :reviews
    has_many :users, through: :reviews 
end
