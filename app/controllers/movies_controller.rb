class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render :index
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render :show
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.update(
      name: params[:name] || @movie.name,
      director: params[:director] || @movie.director,
      image_url: params[:image_url] || @movie.image_url,
      description: params[:description] || @movie.description,
      run_time: params[:run_time] || @movie.run_time,

    )
    render :show
  end
end
