class ReviewController < ApplicationController
  validates :send_comment, only: [:create]
  validates :set_review, only: [:show, :update, :destroy]

  def index
    @reviews = Review.all

    render json: @reviews
  end

  def show
    render json: @review
  end

  def create
    @review = Review.new(
      rating: params[:rating],
      comment: params[:comment], 
      movie_id: params[:movie_id],
      reviewer_id: params[:reviewer_id]
    )

    if review.save
      render json: @review
    else 
      render json: @review.erros, status: :unprocessable_entity
    end
  end

  def update
    @review.update(
      rating: params[:rating] || @review.rating,
      comment: params[:comment] || @review.comment,
      movie_id: params[:movie_id] || @review.movie_id,
      reviewer_id: params[:reviewer_id] || @review.reviewer_id
    )

    render json: @review
  end

  def destroy
    @review.destroy

    render json: { message: "Review was deleted...." }
  end

  private

  def send_comment
    puts "-------------------"
    puts "Mimicing sending reivew comment...."
    puts "-------------------"
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
