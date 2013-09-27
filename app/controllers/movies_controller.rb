class MoviesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @movies = Movie.all
  end
  def show
    @movie = Movie.find(params[:id])
    @budget = @movie.budget.gsub("$","").to_i*1000000 
    @wknd_fantasy_score = (@movie.box_office_performance.gsub("$","").gsub(",","").to_f)/(@movie.budget.gsub("$","").to_f*1000000)
    @total_fantasy_score = (@movie.total_box_office.gsub("$","").gsub(",","").to_f)/(@movie.budget.gsub("$","").to_f*1000000) 
    @most_recent_percentage = @wknd_fantasy_score * 100
    @total_percentage = @total_fantasy_score * 100
    @wknd_bomb_score = (@wknd_fantasy_score * 100) - 100
    @total_bomb_score = (@total_fantasy_score * 100) - 100
  end
  def high_scores
    @movies = Movie.all(params[:total_box_office])
   
  

  end
end