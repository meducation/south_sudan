require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "user should not be author by default" do
    user = create(:user)
    refute user.author
  end
end
