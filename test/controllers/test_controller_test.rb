require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get ts" do
    get test_ts_url
    assert_response :success
  end

end
