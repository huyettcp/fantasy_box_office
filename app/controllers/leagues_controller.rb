class LeaguesController < ApplicationController
  before_filter :authenticate_user!

  def index
    @leagues = League.all
    
  end
end