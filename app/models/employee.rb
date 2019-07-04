class Employee < ApplicationRecord
  belongs_to :division
  belongs_to :project
end
