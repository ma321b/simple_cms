require 'test_helper'

class RedirectControllerTest < ActionDispatch::IntegrationTest
  test "should get redirect" do
    get redirect_redirect_url
    assert_response :success
  end

end
