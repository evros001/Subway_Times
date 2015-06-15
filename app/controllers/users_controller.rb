class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def show
    nyt = Nytapi.new
    query = 'editorial'
    nyt_call = nyt.articles(query, begin_date, end_date)
  end 

  def end_date
    Date.today.strftime("%Y%m%d")
  end 

  def begin_date
    Date.yesterday.strftime("%Y%m%d")
  end
end
