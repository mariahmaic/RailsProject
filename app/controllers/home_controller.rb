class HomeController < ApplicationController
  def index
    @names = Name.all.paginate(page: params[:page], per_page: 30)
  end
end