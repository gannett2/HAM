class TeamMembersController < ApplicationController
  before_action :set_team_member, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @team_members = TeamMember.all
  end

  def show
  end

  def new
    @team_member = current_user.team_members.build
  end

  def edit
  end

  def create
    @team_member = current_user.team_members.build(team_member_params)
    if @team_member.save
      redirect_to @team_member, notice: 'Team member was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @team_member.update(team_member_params)
      redirect_to @team_member, notice: 'Team member was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @team_member.destroy
    redirect_to team_members_url, notice: 'Team member was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_member
      @team_member = TeamMember.find(params[:id])
    end

    def correct_user
      @pin = current_user.team_members.find_by(id: params[:id])
      redirect_to team_members_path, notice: "Not authorized to edit this team member" if @team_member.nil?
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_member_params
      params.require(:team_member).permit(:name, :age, :church, :bio)
    end
end
