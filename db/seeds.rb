# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
100.times do 
 post = Post.new(:tweet=>"mi tweet", :latitud=>"374", :longitud=>"3943", :url=>"facebook.com")
 post.save
end