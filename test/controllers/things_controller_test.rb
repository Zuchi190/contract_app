require "test_helper"

class ThingsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get things_show_url
    assert_response :success
  end
end
