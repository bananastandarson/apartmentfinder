class Apartment < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "600x600" }
  validates_attachment :image, presence: true,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
    size: { in: 0..10.megabytes }
  validates :address, uniqueness: true
  validates :account_id, presence: true
  belongs_to :account
end
