# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'json'
Dir::glob("data/json/*.json").each do |f|
  title = File.basename(f, '.json')
  json = File.read(f)
  creator = JSON.parse(json)
  Anime.find_or_initialize_by(title: title).update(creator: creator)
end
