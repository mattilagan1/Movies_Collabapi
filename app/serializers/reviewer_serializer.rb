class ReviewerSerializer < ActiveModel::Serializer
  attributes :id, :name, :username

  has_many :reviews
end
