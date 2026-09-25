require "test_helper"

class DojoBranchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dojo_branches_index_url
    assert_response :success
  end
end
