class AddVarArticleIdsToOutfits < ActiveRecord::Migration[5.1]
  def change
    add_column :outfits, :top_id, :integer
    add_column :outfits, :bottom_id, :integer
    add_column :outfits, :outerwear_id, :integer
    add_column :outfits, :shoes_id, :integer
    add_column :outfits, :accessory_id, :integer
  end
end
