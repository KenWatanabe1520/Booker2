require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get top[" do
    get homes_top[_url
    assert_response :success
  end
end
