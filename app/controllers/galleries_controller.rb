class GalleriesController < ApplicationController
  before_action :authenticate_admin_user!, except: [:index, :show]

  def index
    @galleries = Gallery.all.order('created_at DESC')
  end

  def new
    @gallery = Gallery.new
  end

  def create
    @gallery = Gallery.create(gallery_params)
    if @gallery
      flash[:pink] = "Gallery Created"
      redirect_to @gallery
    else
      render :new
    end
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    redirect_to galleries_path
    flash[:pink] = "Gallery has been removed"
  end

  private

  def gallery_params
    params.require(:gallery).permit(:title, :description, :date, :cover_photo)
  end
end
