class Account < ActiveRecord::Base
  has_attached_file :image, styles: { avatar: "64x64" }
  validates_attachment :image,
    content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
    size: { in: 0..10.megabytes }
    has_many :apartments
end
