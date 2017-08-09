class GalleryImagesController < ApplicationController
  before_action :authenticate_admin_user!

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @gallery_image = @gallery.gallery_images.build
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    params[:gallery_image][:image].each do |image|
      @gallery_image = @gallery.gallery_images.create(image: image)
    end
    @gallery.cover_photo = @gallery.gallery_images.first.image.url(:thumb)
    @gallery.save
    if @gallery_image
      flash[:pink] = "Images Added"
      redirect_to @gallery
    else
      render :new
    end
  end

end
