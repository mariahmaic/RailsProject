class HomeController < ApplicationController
  def index
    @names = Name.all
  end
end