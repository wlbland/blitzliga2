class TeamPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    user.admin?
  end

  def captains?
    user.admin?
  end

end
