class TeamsController < ApplicationController

  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  skip_before_action :authenticate_user!, only: [:index, :show]
  skip_after_action :verify_authorized, only: [:index, :show, :captains]
  skip_after_action :verify_policy_scoped, only: [:index]


  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def captains
    # @teams = policy_scope(Team)(:joins => 'LEFT OUTER JOIN users ON usersteam_id = team.id')
    @teams = policy_scope(Team)
    @users = User.where(team_id: nil)
  end

  private
    def team_params
      params.require(:team).permit(:name)
    end

end


