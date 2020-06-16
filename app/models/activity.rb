class Activity < ApplicationRecord
  has_one_attached :photo
  belongs_to :city
end
