require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "signing in and adding a player " do
    visit root_path
    click_on "Sign In"
    fill_in "Email", with: "marat@baichurin.com"
    fill_in "Password", with: "A5646545**v"
    click_on 'Sign In'
    assert_equal("A5646545**v", users(:marat).encrypted_password)
    assert_text "Signed in successfully."
  end

end

