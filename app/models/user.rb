class User < ApplicationRecord
<<<<<<< HEAD
  has_many :articles
  has_many :outfits
  validates :email, uniqueness: true
=======
  has_secure_password
>>>>>>> 9c954a600c5ee530c0c2e554fca826d8dcddcecb
end
