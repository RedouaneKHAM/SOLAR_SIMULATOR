class Simulation < ApplicationRecord
  belongs_to :user
  has_many :reports
end
