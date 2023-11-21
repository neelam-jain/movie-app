class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
    @details = MovieService.get_movie_details(@movie.imdb_id)
  end

  def search
    query = params[:query]
    @results = MovieService.search_movies(query)
  end
end