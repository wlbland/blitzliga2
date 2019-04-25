require "application_system_test_case"

class TeamScoresTest < ApplicationSystemTestCase
  test "creating a team score" do
    take_screenshot
    visit  new_team_score_path

    click_on "New Team Score"

    fill_in "Title", with: "Creating an Article"
    fill_in "Body", with: "Created this article successfully!"

    click_on "Create Article"

    assert_text "Creating an Article"
  end

  # test "visiting the index" do
  #   visit team_scores_url
  #
  #   assert_selector "h1", text: "TeamScores"
  # end
end
