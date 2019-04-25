class TeamsController < ApplicationController

  # http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]


  def index
    @teams = Team.all
  end

end
