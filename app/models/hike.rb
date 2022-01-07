class Hike < ApplicationRecord
    belongs_to :island
    has_many :reviews
    has_many :users, through: :reviews 

    scope :most_reviews, -> {joins(:reviews).group(:hike_id).order("COUNT(reviews.id) desc").limit(1)}
end
