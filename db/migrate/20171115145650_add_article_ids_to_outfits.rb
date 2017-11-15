class AddArticleIdsToOutfits < ActiveRecord::Migration[5.1]
  def change
    add_column :outfits, :article_ids, :string
  end
end
