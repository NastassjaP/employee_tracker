require 'test_helper'

class UserTest < ActiveSupport::TestCase
 context 'validations' do
   should validate_presence_of(:email)
   should validate_uniqueness_of(:email)
   should validate_presence_of(:encrypted_password)
   should validate_presence_of(:type)
 end

end
