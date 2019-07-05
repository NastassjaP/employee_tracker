class Project < ApplicationRecord
  has_many :employees


  validates :status,:name, presence: true

end
