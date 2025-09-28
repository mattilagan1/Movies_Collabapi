class MovieController < ApplicationController
  validates :send_genre, only: [:create]
  validates :set_movie, only: [:show, :update, :destroy]

  def index
    @movies = Movie.all

    render json: @movies
  end

  def show
    render json: @movie
  end

  def create
    @movie = Movie.new(
      title: params[:title], 
      genre: params[:genre]
    )

    if movie.save
      render json: @movie
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  def update
    @movie.update(
      title: params[:title] || @movie.title,
      genre: params[:genre] || @movie.genre
    )

    render json: @movie
  end

  def destroy
    @movie.destroy

    render json: { message: "Movie was deleted...." }
  end

  private

  def send_genre
    puts "-----------------"
    puts "Mimicing sending movie genre...."
    puts "-----------------"
  end

  def set_movie
    @movie = Movie.findO(params[:id])
  end
end
