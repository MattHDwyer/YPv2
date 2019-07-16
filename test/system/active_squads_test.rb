require "application_system_test_case"

class ActiveSquadsTest < ApplicationSystemTestCase
  setup do
    @active_squad = active_squads(:one)
  end

  test "visiting the index" do
    visit active_squads_url
    assert_selector "h1", text: "Active Squads"
  end

  test "creating a Active squad" do
    visit active_squads_url
    click_on "New Active Squad"

    fill_in "Student", with: @active_squad.student_id
    fill_in "Team", with: @active_squad.team_id
    click_on "Create Active squad"

    assert_text "Active squad was successfully created"
    click_on "Back"
  end

  test "updating a Active squad" do
    visit active_squads_url
    click_on "Edit", match: :first

    fill_in "Student", with: @active_squad.student_id
    fill_in "Team", with: @active_squad.team_id
    click_on "Update Active squad"

    assert_text "Active squad was successfully updated"
    click_on "Back"
  end

  test "destroying a Active squad" do
    visit active_squads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Active squad was successfully destroyed"
  end
end
