class TeamsController < ApplicationController

  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
    authorize(@team)
  end

  private
    def team_params
      params.require(:team).permit(:name)
    end
  end

end
