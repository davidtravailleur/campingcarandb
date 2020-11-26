class CampingCar < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_city_and_category,
    against: [ :location, :category ],
    using: {
      tsearch: { prefix: true }
    }

  belongs_to :user
  has_many :bookings

  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
