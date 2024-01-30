require "test_helper"

class SolarkitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get solarkits_index_url
    assert_response :success
  end
end
