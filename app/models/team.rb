class Team < ApplicationRecord

    has_one :user

    has_many :players, dependent: :destroy
    has_many :team_fixtures, dependent: :destroy
    has_many :goals, dependent: :destroy

    validates :name, presence: true, uniqueness: true, length: { maximum: 20 }


end


