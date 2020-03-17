require "application_system_test_case"

class GroupsTest < ApplicationSystemTestCase
  setup do
    @group = groups(:one)
  end

  test "visiting the index" do
    visit groups_url
    assert_selector "h1", text: "Groups"
  end

  test "creating a Group" do
    visit groups_url
    click_on "New Group"

    fill_in "Description", with: @group.description
    fill_in "Max attendees", with: @group.max_attendees
    fill_in "Meeting point", with: @group.meeting_point
    check "Remote" if @group.remote
    fill_in "Starting date", with: @group.starting_date
    fill_in "Title", with: @group.title
    fill_in "Udemy course", with: @group.udemy_course_id
    fill_in "Udemy course title", with: @group.udemy_course_title
    fill_in "User", with: @group.user_id
    fill_in "Work period", with: @group.work_period
    click_on "Create Group"

    assert_text "Group was successfully created"
    click_on "Back"
  end

  test "updating a Group" do
    visit groups_url
    click_on "Edit", match: :first

    fill_in "Description", with: @group.description
    fill_in "Max attendees", with: @group.max_attendees
    fill_in "Meeting point", with: @group.meeting_point
    check "Remote" if @group.remote
    fill_in "Starting date", with: @group.starting_date
    fill_in "Title", with: @group.title
    fill_in "Udemy course", with: @group.udemy_course_id
    fill_in "Udemy course title", with: @group.udemy_course_title
    fill_in "User", with: @group.user_id
    fill_in "Work period", with: @group.work_period
    click_on "Update Group"

    assert_text "Group was successfully updated"
    click_on "Back"
  end

  test "destroying a Group" do
    visit groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Group was successfully destroyed"
  end
end
