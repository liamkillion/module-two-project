class RemoveTypeFromArticles < ActiveRecord::Migration[5.1]
  def change
    remove_column :articles, :type

  end
end
