class HomeController < ApplicationController
  def index
    @reviews = Review.where(approved: true)
  end

  def about
  end

  def services
  end

  def faq
  end
end


