class TeamFixture < ApplicationRecord
  belongs_to :fixture
  belongs_to :team
  has_one :team_score
end
