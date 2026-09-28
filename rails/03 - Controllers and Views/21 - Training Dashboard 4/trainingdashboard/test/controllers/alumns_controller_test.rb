require "test_helper"

class AlumnsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get alumns_index_url
    assert_response :success
  end

  test "should get show" do
    get alumns_show_url
    assert_response :success
  end

  test "should get new" do
    get alumns_new_url
    assert_response :success
  end

  test "should get create" do
    get alumns_create_url
    assert_response :success
  end

  test "should get edit" do
    get alumns_edit_url
    assert_response :success
  end

  test "should get update" do
    get alumns_update_url
    assert_response :success
  end

  test "should get destroy" do
    get alumns_destroy_url
    assert_response :success
  end
end
