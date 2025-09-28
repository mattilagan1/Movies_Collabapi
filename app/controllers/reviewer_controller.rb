class ReviewerController < ApplicationController
  def index
    reviewers = Reviewer.all

    render json: reviewers
  end

  def create
    reviewers = Reviewer.new(
      name: params[:name],
      username: params[:username]
    )

    if reivewer.save
      render json: movies
    else
      render json: movies.errors, status: :unprocessable_entity
    end
  end
end
