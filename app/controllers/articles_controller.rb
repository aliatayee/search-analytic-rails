class ArticlesController < ApplicationController
  before_action :check_session, only: [:search]
  # GET /articles or /articles.json
  def index
    @articles = Article.all
  end

  def trends
    @queries = Query.all
  end

  def search
    @articles = if params[:query].present?
                  Article.where('title LIKE ?', "%#{params[:query]}%")
                else
                  Article.all
                end
    if turbo_frame_request?
      render partial: 'articles', locals: { articles: @articles }
    else
      render :index
    end
    save_query(params[:query], session[:user_id])
  end

  private

  def save_query(query, session)
    return if query.nil? || query.length < 3
    searched_query = Query.new(user_params)
    searched_query.user_id = session
    saved_query = Query.where(user_id: session)
    if saved_query.empty?()
      searched_query.save
    else
      similar = saved_query.search_similarity(query)
      if similar.empty?()
        searched_query.save
      elsif query.length > similar.first.query.length
        similar.first.update(query:)
      end
    end
  end
  def user_params
    params.permit(:query)
  end

  def check_session
    session[:user_id] = SecureRandom.urlsafe_base64(16) if session[:user_id].nil?
  end
end
