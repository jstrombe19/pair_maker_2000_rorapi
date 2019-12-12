class Cohort < ApplicationRecord
  has_many :students, :dependent => :destroy
  validates :name, presence: true
  validates :graduated, presence: true
end
