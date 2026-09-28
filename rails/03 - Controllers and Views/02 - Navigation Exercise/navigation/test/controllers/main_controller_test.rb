require "test_helper"

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get main_hello_url
    assert_response :success
  end

  test "should get say" do
    get main_say_url
    assert_response :success
  end

  test "should get say_anything" do
    get main_say_anything_url
    assert_response :success
  end

  test "should get index" do
    get main_index_url
    assert_response :success
  end

  test "should get danger" do
    get main_danger_url
    assert_response :success
  end
end
