require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "signing in as an admin and adding a team" do
    visit root_path

    # sign in
    click_on "Sign In"
    fill_in "Email", with: "admin@admin.com\n"
    fill_in "Password", with: "A5646545**v\n"
    # click_on 'Sign In'

    # get redirected to a list of all users
    assert_equal users_path, page.current_path
    assert_text "Captains"

    # select a user to make him/her captain of a team


    # assert_equal("A5646545**v", users(:admin).encrypted_password)
    # assert_text "Signed in successfully."

  end

end

