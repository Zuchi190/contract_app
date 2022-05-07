require "test_helper"

class PdfsControllerTest < ActionDispatch::IntegrationTest
  test "should get bill" do
    get pdfs_bill_url
    assert_response :success
  end
end
