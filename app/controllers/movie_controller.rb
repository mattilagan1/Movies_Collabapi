class MovieController < ApplicationController
  def index
    movies = Movie.all

    render json: movies
  end

  def create
    movies = Movie.new(
      title: params[:title], 
      genre: params[:genre]
    )

    if movie.save
      render json: movies
    else
      render json: movies.errors, status: :unprocessable_entity
    end
  end
end
