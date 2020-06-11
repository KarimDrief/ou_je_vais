class Activity < ApplicationRecord
  belongs_to :country
  has_one_attached :photo
end
