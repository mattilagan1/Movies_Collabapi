class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :genre

  has_many :reviews
end
