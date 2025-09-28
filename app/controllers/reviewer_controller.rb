class ReviewerController < ApplicationController
  validates :send_username, only: [:create]
  validates :set_name, only: [:show, :update, :destroy]

  def index
    @reviewers = Reviewer.all

    render json: @reviewers
  end

  def show
    render json: @reviewer
  end

  def create
    @reviewer = Reviewer.new(
      name: params[:name],
      username: params[:username]
    )

    if reivewer.save
      render json: @reviewer
    else
      render json: @reviewer.errors, status: :unprocessable_entity
    end
  end

  def update
    @reviewer.update(
      name: params[:name] || @reviewer.name,
      username: params[:username] || @reviewer.username
    )

    render json: @reviewer
  end

  def destroy
    @reviewer.destroy

    render json: { message: "Reviewer was deleted,,,," }
  end

  private

  def send_username
    puts "---------------"
    puts "Mimicing sending a username...."
    puts "---------------"
  end

  def set_name
    @reviewer = Reviewer.find(params[:id])
  end
end
