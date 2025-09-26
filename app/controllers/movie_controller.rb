class MovieController < ApplicationController
  def index
    movies = Movie.all

    render json: movies
  end

  def create
    movies = Movie.create(
      title: params[:title], 
      genre: params[:genre]
    )

    render json: movies
  end
end
