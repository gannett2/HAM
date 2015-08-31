class CampsController < ApplicationController
  before_action :set_camp, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit,:update,:destroy]
  before_action :authenticate_user!, except: [:index,:show]

  def index
    @camps = Camp.all
  end

  def show
  end

  
  def new
    @camp = current_user.camps.build
  end

  def edit
  end

 def create
    @camp = current_user.camps.build(camp_params)
      if @camp.save
        redirect_to @camp, notice: 'Camp was successfully created.' 
      else
        render action: 'new' 
      end
  end

  def update
      if @camp.update(camp_params)
         redirect_to @camp, notice: 'Camp was successfully updated.' 
      else
        render action: 'edit'
      end
  end

 def destroy
    @camp.destroy
      redirect_to camps_url, notice: 'Camp was successfully destroyed.' 
 end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camp
      @camp = Camp.find(params[:id])
    end

    def correct_user
      @camp = current_user.camps.find_by(id: params[:id])
      redirect_to camps_path, notice: "Not authorized to edit" if @camp.nil?
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def camp_params
      params.require(:camp).permit(:name, :description)
    end
end