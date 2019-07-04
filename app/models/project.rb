class Project < ApplicationRecord
  has_many :employees

  def self.statuses
    %w( 0 1)
  end
end
