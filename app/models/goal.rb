class Goal < ApplicationRecord
  belongs_to :fixture
  belongs_to :player
end
