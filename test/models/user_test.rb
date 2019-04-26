require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "all the users have been seeded" do
    assert_equal User.count, 9
    assert_equal users(:administrator).encrypted_password, "A5646545**v"
  end
end
