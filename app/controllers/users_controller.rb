class UsersController < ApplicationController

  def index
    @users = policy_scope(User)
  end

  def update
    @user = Player.find(params[:id])
    authorize @user
  end

  private

    def player_params
      params.require(:user).permit(:team_id)
    end

end
