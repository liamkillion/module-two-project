class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :type
      t.string :color
      t.boolean :summer
      t.boolean :winter

      t.timestamps
    end
  end
end
