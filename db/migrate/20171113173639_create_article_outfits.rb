class CreateArticleOutfits < ActiveRecord::Migration[5.1]
  def change
    create_table :article_outfits do |t|
      t.integer :outfit_id
      t.integer :article_id

      t.timestamps
    end
  end
end
