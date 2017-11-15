class Outfit < ApplicationRecord
  belongs_to :user
  has_many :article_outfits
  has_many :articles, through: :article_outfits
end
