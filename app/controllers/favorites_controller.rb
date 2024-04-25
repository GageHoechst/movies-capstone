class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.create(
      user_id: params[:user_id],
      movie_id: params[:movie_id],
    )
    render :show
  end

  def show
    @favorite = Favorite.find_by(id: params[:id])
    render :show
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.destroy
    render json: { message: "Favorite removed successfully" }
  end
end
