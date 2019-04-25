class Season < ApplicationRecord
  has_many :fixtures, dependent: :destroy

end
