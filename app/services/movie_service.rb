class MovieService
  include HTTParty
  base_uri 'http://www.omdbapi.com'

  def self.search_movies(query)
    get('/?apikey=YOUR_API_KEY', query: { s: query })
  end

  def self.get_movie_details(imdb_id)
    get('/?apikey=YOUR_API_KEY', query: { i: imdb_id, plot: 'full' })
  end
end
