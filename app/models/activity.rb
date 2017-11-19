class Activity < ApplicationRecord
  validates :people, numericality: { greater_than_or_equal_to: 0 }
end
