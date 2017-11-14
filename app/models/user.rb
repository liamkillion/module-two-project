class User < ApplicationRecord
  has_many :articles
  has_many :outfits
  validates :email, uniqueness: true
  has_secure_password
end
