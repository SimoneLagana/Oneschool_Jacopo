require "test_helper"

class OneschoolControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get oneschool_index_url
    assert_response :success
  end
end
