class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :nav_articles

  def nav_articles
    @latest_articles = Article.order(created_at: :desc)
    @article_first = Article.take(1)
  end


end
