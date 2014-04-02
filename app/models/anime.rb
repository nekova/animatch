class Anime
  include Mongoid::Document
  field :title, type: String
  field :creator, type: Hash

  validates :title, presence: true, uniqueness: true
  validates :creator, presence: true, uniqueness: true
end
