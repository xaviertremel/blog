class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :nav_articles

  def nav_articles
    @latest_articles_nav = Article.order(created_at: :desc)
    @latest_articles = Article.order(created_at: :desc).paginate(:page => params[:page], :per_page => 3)
    @article_first = Article.take(1)
  end

  rescue_from CanCan::AccessDenied do |exception|
 	 redirect_to main_app.root_url, :alert => exception.message
	end


end
