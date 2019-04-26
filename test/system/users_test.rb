require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  test "signing in as an admin and viewing each team's delegated captain" do
    visit root_path

    # sign in as an admin user
    click_on "Sign In"
    fill_in("Email", with: "admin@admin.com")
    fill_in("Password", with: "A5646545**v\n")

    # get redirected to a page displaying all the teams
    assert_equal captains_teams_path, page.current_path
    assert_text "Teams and their Captains"
    page.save_screenshot('screenshot.png')


    # the page should list every team and its captain's email address
    assert_selector ".team_name", count: Team.count
    assert_text("@", {count: Team.joins(:user).count})

    # the page should allow the admin to assign a captain if the team is missing one
    assert_text("Assign a captain", {count: (Team.count-Team.joins(:user).count)})
    click_on "Assign a captain"


    # the admin should be able to assign a user to a team and make him the team's captain

    # the admin should be able to replace a captain


    # assert_equal("A5646545**v", users(:admin).encrypted_password)
    # assert_text "Signed in successfully."

  end

  # test "signing in as a captain" do
  #   visit root_path

  #   # sign in as a captain
  #   click_on "Sign In"
  #   fill_in("Email", with: "Star@gmail.com")
  #   fill_in("Password", with: "A5646545**v\n")

  #   assert_text "Teams and their Captains"

  # end

end

