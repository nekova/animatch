class Anime
  include Mongoid::Document
  field :title, type: String
  field :creator, type: Hash
end
