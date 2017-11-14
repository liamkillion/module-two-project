# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'pry'

articles = CSV.read('./db/module_2_project.csv')

article_headers = articles.shift

article_hashes = articles.map {|article| Hash[article_headers.zip(article)]}

article_hashes.each do |article|
  Article.create(article)
end
