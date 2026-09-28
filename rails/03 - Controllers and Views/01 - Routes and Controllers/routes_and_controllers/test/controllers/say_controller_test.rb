require "test_helper"

class SayControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get say_index_url
    assert_response :success
  end

  test "should get hello" do
    get say_hello_url
    assert_response :success
  end

  test "should get hello_joe" do
    get say_hello_joe_url
    assert_response :success
  end

  test "should get hello_michael" do
    get say_hello_michael_url
    assert_response :success
  end
end
