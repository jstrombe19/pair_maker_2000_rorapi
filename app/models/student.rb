class Student < ApplicationRecord
  belongs_to :cohort
  validates :name, presence: true
  validates :cohort_id, presence: true
  validates :blue, presence: true
  validates :gold, presence: true
  validates :green, presence: true
  validates :orange, presence: true
end
