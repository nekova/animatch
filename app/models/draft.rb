class Draft
  include Mongoid::Document
  field :anime_id, type: String
  field :wrong_position, type: String
  field :right_position, type: String
  field :wrong_creator, type: Hash
  field :right_creator, type: Hash
  field :new?, type: Boolean
end
