require 'test_helper'

class ProjectTest < ActiveSupport::TestCase

 context 'associations' do
   should have_many(:employees)
 end

 context 'validations' do
   should validate_presence_of(:name)
   should validate_presence_of(:status)
 end

end
