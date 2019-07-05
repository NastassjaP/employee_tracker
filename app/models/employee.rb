class Employee < ApplicationRecord
  belongs_to :division
  belongs_to :project, optional: true
  validates :division_id, :employee_name, presence: true

end
