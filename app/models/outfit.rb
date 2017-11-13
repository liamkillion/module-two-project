class Outfit < ApplicationRecord
  belongs_to :user
  has_many :articles, through: :article_outfits
end
