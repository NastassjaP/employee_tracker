require 'test_helper'

class EmployeeTest < ActiveSupport::TestCase

 context 'associations' do
   should belong_to(:division)
   should belong_to(:project)
 end
 context 'validations' do
   should validate_presence_of(:employee_name)
   should validate_presence_of(:division_id)
 end

end
