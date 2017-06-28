class HomeController < ApplicationController
  def index
    @reviews = Review.all
  end

  def about
  end

  def services
  end

  def faq
  end
end


