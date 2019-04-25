class RemoveFixtureFromGoal < ActiveRecord::Migration[5.2]
  def change
    remove_reference :goals, :fixture, foreign_key: true
  end
end
