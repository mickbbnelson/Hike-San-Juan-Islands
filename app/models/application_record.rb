class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  scope :alphabetical_order, -> {order(:name)}
  
end
