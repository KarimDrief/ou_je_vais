class City < ApplicationRecord
  has_one_attached :photo
  has_many :activities, dependent: :destroy
  belongs_to :country
end
