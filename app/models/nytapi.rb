class Nytapi < ActiveRecord::Base

  def articles(news_desk, begin_date, end_date)
    key = ENV['ARTICLE_KEY']
    call = api_call+"&fq=news_desk:(%22"+news_desk+"%22)&begin_date="+begin_date+"&end_date="+end_date+"&api-key="+key
  end 

  def api_call
    call = "http://api.nytimes.com/svc/search/v2/articlesearch.json?"
  end

  def movie(query)
    env = ENV['MOVIE_REVIEW']
  end 
end
