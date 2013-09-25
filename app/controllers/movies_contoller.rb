class MoviesController < ApplicationController
  before_filter :authenticate_user!
  include BoxOfficeScraper
  def index
    @movies = Movie.all

      
  end
end