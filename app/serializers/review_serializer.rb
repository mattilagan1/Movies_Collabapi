class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment, :movie_id, :reviewer_id

  belongs_to :movie
  belongs_to :reviewer
end
