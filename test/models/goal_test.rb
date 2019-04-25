require 'test_helper'

class GoalTest < ActiveSupport::TestCase

  test "should not save a goal unless it's associated with a team and a player" do
    goal = Goal.new
    assert_not(goal.save, "Saved the goal without a team or a player")
  end

end
