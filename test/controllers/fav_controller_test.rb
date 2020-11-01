require 'test_helper'

class FavControllerTest < ActionDispatch::IntegrationTest
  test "should get show1" do
    get fav_show1_url
    assert_response :success
  end

  test "should get show2" do
    get fav_show2_url
    assert_response :success
  end

  test "should get show3" do
    get fav_show3_url
    assert_response :success
  end

end
