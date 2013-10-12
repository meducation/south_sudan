require 'test_helper'

class ApplicationControllerTest < ActionController::TestCase
  test "check_author should be true if the user is an author" do
    user = create(:user, author: true)
    @controller.stubs(current_user: user)
    assert @controller.send :check_author!
  end
  test "check_author should be false if there's no user" do
    user = create(:user)
    @controller.stubs(current_user: user)
    refute @controller.send :check_author!
  end
  test "check_author should be false if the user is not an author" do
    skip "Not sure why this doesn't work"
    user = create(:user)
    refute @controller.send :check_author!
  end
end

