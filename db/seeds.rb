# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

list1 = List.create!(name: "Mes films d'action préférés")
list2 = List.create!(name: "Comédies à voir entre amis")


movies = Movie.limit(5)


Bookmark.create!(list: list1, movie: movies[0], comment: "Un classique !")
Bookmark.create!(list: list1, movie: movies[1], comment: "À revoir absolument")
Bookmark.create!(list: list2, movie: movies[2], comment: "Fou rire garanti")
Bookmark.create!(list: list2, movie: movies[3], comment: "À regarder en famille")

puts "Deux listes et leurs bookmarks ont été créés avec succès !"
