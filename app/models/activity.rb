class Activity < ApplicationRecord
  has_many :sessions, dependent: :destroy
end
