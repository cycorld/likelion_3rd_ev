class HomeController < ApplicationController
  def index
    @tvs = Tv.all
    @banner = @tvs.sample
  end

  def detail
  end

  def upload
  end

  def create
    Tv.create(user_id: 1, title: params[:title], url: params[:url], intro: params[:intro])
    redirect_to '/'
  end
end
