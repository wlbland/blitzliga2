class Fixture < ApplicationRecord
  belongs_to :season
  has_many :team_fixtures, dependent: :destroy
end
