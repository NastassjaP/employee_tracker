require 'test_helper'
class DivisionTest < ActiveSupport::TestCase
 context 'associations' do
   should have_many(:employees)
 end

 context 'validations' do
   should validate_presence_of(:division_name)
 end
end
