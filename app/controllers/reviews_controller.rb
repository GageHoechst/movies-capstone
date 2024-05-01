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
end
