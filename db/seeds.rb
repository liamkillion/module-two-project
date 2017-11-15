# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
require 'pry'

5.times do |x|
  User.create(name: "user#{x}", email: "user#{x}@email.com", password: "123")
end

bools = [true,false]
categories = ["outerwear", "top", "bottom", "shoes", "accessory"]
colors = ["blue", "red", "yellow", "brown", "black", "green", "white"]


User.all.each do |user|
  num_articles = (0..10).to_a.sample

  num_articles.times do
    sum_wint = bools.sample
    Article.create(summer: sum_wint, winter: !sum_wint, user: user, color: colors.sample, category: categories.sample)
  end

end


# articles = CSV.read('./db/module_2_project.csv')
#
# article_headers = articles.shift
#
# article_hashes = articles.map {|article| Hash[article_headers.zip(article)]}
#
# article_hashes.each do |article|
#   Article.create(article)
# end
