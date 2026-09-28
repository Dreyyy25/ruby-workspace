require "test_helper"

class AttendeesshowControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get attendeesshow_new_url
    assert_response :success
  end

  test "should get create" do
    get attendeesshow_create_url
    assert_response :success
  end

  test "should get edit" do
    get attendeesshow_edit_url
    assert_response :success
  end

  test "should get update" do
    get attendeesshow_update_url
    assert_response :success
  end

  test "should get destroy" do
    get attendeesshow_destroy_url
    assert_response :success
  end
end
