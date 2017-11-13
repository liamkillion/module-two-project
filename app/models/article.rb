class Article < ApplicationRecord
  has_many :outfits, through: :article_outfits
  belongs_to :user
end
