class PhotoUsersController < ApplicationController
  before_action :set_photo_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @photo_users = current_user.album.page(params[:page])
    respond_with(@photo_users)
  end

  def show
    respond_with(@photo_user)
  end

  def new
    @photo_user = PhotoUser.new
    respond_with(@photo_user)
  end

  def edit
  end

  def create

    @photo_user = PhotoUser.new(:user_id=>current_user.id, :photo=>params[:photo_user][:photo])
    @photo_user.save
    respond_with(@photo_user)
  end

  def update
    @photo_user.update(photo_user_params)
    respond_with(@photo_user)
  end

  def destroy
    @photo_user.destroy
    respond_with(@photo_user)
  end

  private
    def set_photo_user
      @photo_user = PhotoUser.find(params[:id])
    end

    def photo_user_params
      params.require(:photo_user).permit(:user_id, :photo)
    end
end
