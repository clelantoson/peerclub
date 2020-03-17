require 'test_helper'

class GroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @group = groups(:one)
  end

  test "should get index" do
    get groups_url
    assert_response :success
  end

  test "should get new" do
    get new_group_url
    assert_response :success
  end

  test "should create group" do
    assert_difference('Group.count') do
      post groups_url, params: { group: { description: @group.description, max_attendees: @group.max_attendees, meeting_point: @group.meeting_point, remote: @group.remote, starting_date: @group.starting_date, title: @group.title, udemy_course_id: @group.udemy_course_id, udemy_course_title: @group.udemy_course_title, user_id: @group.user_id, work_period: @group.work_period } }
    end

    assert_redirected_to group_url(Group.last)
  end

  test "should show group" do
    get group_url(@group)
    assert_response :success
  end

  test "should get edit" do
    get edit_group_url(@group)
    assert_response :success
  end

  test "should update group" do
    patch group_url(@group), params: { group: { description: @group.description, max_attendees: @group.max_attendees, meeting_point: @group.meeting_point, remote: @group.remote, starting_date: @group.starting_date, title: @group.title, udemy_course_id: @group.udemy_course_id, udemy_course_title: @group.udemy_course_title, user_id: @group.user_id, work_period: @group.work_period } }
    assert_redirected_to group_url(@group)
  end

  test "should destroy group" do
    assert_difference('Group.count', -1) do
      delete group_url(@group)
    end

    assert_redirected_to groups_url
  end
end
