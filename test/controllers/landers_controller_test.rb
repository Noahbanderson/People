require 'test_helper'

class LandersControllerTest < ActionDispatch::IntegrationTest
  test "should get land" do
    get landers_land_url
    assert_response :success
  end

  test "should get about" do
    get landers_about_url
    assert_response :success
  end

end
