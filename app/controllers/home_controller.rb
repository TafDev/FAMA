class HomeController < ApplicationController
  def index
    @reviews = Review.where(approved: true)
    @homepage_images = Image.where(attachable_type: :homepage)
  end

  def about
  end

  def services
  end

  def faq
  end
end


