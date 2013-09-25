class MoviesController < ApplicationController

  include BoxOfficeScraper

  def index
    movies = load_data_table
    movies.each do |movie|
      movie = Movie.create(box_office_performance: box_office_performance, total_box_office: total_box_office, budget: budget, title: title)
    end
  end
end