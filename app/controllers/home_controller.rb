class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:upload, :create, :ev]
  def index
    @tvs = Tv.all
    @banner = @tvs.sample
  end

  def detail
    @pro = Tv.find(params[:id])
  end

  def upload
  end

  def create
    Tv.create(user_id: 1, title: params[:title], url: params[:url], intro: params[:intro])
    redirect_to '/'
  end

  def ev
    Comment.create(user_id: current_user.id, tv_id: params[:id], score: params[:rating].to_i, comment: params[:msg])
    redirect_to "/home/detail/#{params[:id]}"
  end
end
