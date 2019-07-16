require 'test_helper'

class ActiveSquadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @active_squad = active_squads(:one)
  end

  test "should get index" do
    get active_squads_url
    assert_response :success
  end

  test "should get new" do
    get new_active_squad_url
    assert_response :success
  end

  test "should create active_squad" do
    assert_difference('ActiveSquad.count') do
      post active_squads_url, params: { active_squad: { student_id: @active_squad.student_id, team_id: @active_squad.team_id } }
    end

    assert_redirected_to active_squad_url(ActiveSquad.last)
  end

  test "should show active_squad" do
    get active_squad_url(@active_squad)
    assert_response :success
  end

  test "should get edit" do
    get edit_active_squad_url(@active_squad)
    assert_response :success
  end

  test "should update active_squad" do
    patch active_squad_url(@active_squad), params: { active_squad: { student_id: @active_squad.student_id, team_id: @active_squad.team_id } }
    assert_redirected_to active_squad_url(@active_squad)
  end

  test "should destroy active_squad" do
    assert_difference('ActiveSquad.count', -1) do
      delete active_squad_url(@active_squad)
    end

    assert_redirected_to active_squads_url
  end
end
