class Player < ApplicationRecord
  belongs_to :team

  has_many :goals

  validates :last_name, presence: true


end
