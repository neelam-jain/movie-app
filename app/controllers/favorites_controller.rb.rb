# app/controllers/favorites_controller.rb
class FavoritesController < ApplicationController
  def index
    @favorite_movies = current_user.favorite_movies
  end

  def create
    @movie = Movie.find(params[:movie_id])
    current_user.favorite_movies << @movie unless current_user.favorite_movies.include?(@movie)
    redirect_to movies_path, notice: 'Movie added to favorites!'
  end

  def destroy
    @movie = Movie.find(params[:id])
    current_user.favorite_movies.delete(@movie)
    redirect_to favorites_path, notice: 'Movie removed from favorites!'
  end
end
