class Movie < ActiveRecord::Base
  validates :title, :imdbID, presence: true
end
