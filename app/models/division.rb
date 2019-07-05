class Division < ApplicationRecord
  has_many :employees, dependent: :destroy
  validates :division_name, presence: true

end
