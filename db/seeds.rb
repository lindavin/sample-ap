# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

rss_list = [
  [ "truth dig", 'https://www.truthdig.com/rss-2/' ],
  [ "truth out", 'https://truthout.org/latest/feed/' ],
  [ "mint press", 'https://www.mintpressnews.com/rss/' ],
  [ "black agenda report", 'https://www.blackagendareport.com/feeds-story'] 
]

rss_list.each do |name, link|
 RssFeed.create!( name: name, link: link)
end