class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @pictures = Picture.all
  end

  def show
  end

  def new
    @picture = current_user.pictures.build
  end

  def edit
  end

  def create
    @picture = current_user.pictures.build(picture_params)
    if @picture.save
      redirect_to @picture, notice: 'Picture was successfully created.' 
    else
      render action: 'new' 
    end
  end

  def update
    if @picture.update(picture_params)
      redirect_to @picture, notice: 'Picture was successfully updated.' 
    else
      render action: 'edit'
    end
  end

  def destroy
    @picture.destroy
    redirect_to pictures_url
  end

  private
    def set_picture
      @picture = Picture.find(params[:id])
    end

     def correct_user
      @pin = current_user.pictures.find_by(id: params[:id])
      redirect_to pictures_path, notice: "Not authorized to edit this pin" if @pin.nil?
    end

    def picture_params
      params.require(:picture).permit(:description, :image)
    end
end
