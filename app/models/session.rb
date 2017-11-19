class Session < ApplicationRecord
  belongs_to :activity

  validates :people, numericality: { greater_than_or_equal_to: 0 }
end
