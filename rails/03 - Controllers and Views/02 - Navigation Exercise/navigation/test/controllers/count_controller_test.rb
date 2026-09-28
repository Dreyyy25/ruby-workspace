require "test_helper"

class CountControllerTest < ActionDispatch::IntegrationTest
  test "should get count" do
    get count_count_url
    assert_response :success
  end

  test "should get reset" do
    get count_reset_url
    assert_response :success
  end
end
