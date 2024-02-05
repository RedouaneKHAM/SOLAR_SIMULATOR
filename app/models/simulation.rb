class Simulation < ApplicationRecord
  belongs_to :user
  has_many :reports
  validates :type_of_property, :region, :month_fst, :month_scd, :month_trd, :month_fth, presence: { message: "must be given please" }
end
