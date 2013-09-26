class MoviesController < ApplicationController


  def index
    @movies = Movie.all
  end
  def show
    @movie = Movie.find(params[:id])
    @wknd_fantasy_score = (@movie.box_office_performance.gsub("$","").gsub(",","").to_i)/(@movie.budget.gsub("$","").to_f*1000000)
    @total_fantasy_score = (@movie.total_box_office.gsub("$","").gsub(",","").to_f)/(@movie.budget.gsub("$","").to_f*1000000) 
  end
  def high_scores
    @movies = Movie.all(params[:total_box_office])
   
  

  end
end