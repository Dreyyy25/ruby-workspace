require "test_helper"

class FeedbackControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get feedback_index_url
    assert_response :success
  end

  test "should get result" do
    get feedback_result_url
    assert_response :success
  end
end
