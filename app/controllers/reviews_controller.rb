class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
    render :index
  end

  def create
    @review = Review.create(
      name: params[:name],
      movie: params[:movie],
      thoughts: params[:thoughts],
    )
    render :show
  end

  def show
    @review = Review.find_by(id: params[:id])
    render :show
  end

  def update
    @review = Review.find_by(id: params[:id])
    @review.update(
      name: params[:name] || @review.name,
      movie: params[:movie] || @review.movie,
      thoughts: params[:thoughts] || @review.thoughts,
    )
    render :show
  end
end
