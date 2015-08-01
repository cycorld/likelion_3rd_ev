class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:upload, :create]
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
  end
end
