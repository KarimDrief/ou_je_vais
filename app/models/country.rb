class Country < ApplicationRecord
  has_one_attached :photo
  has_many :cities

   include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [ :name],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
