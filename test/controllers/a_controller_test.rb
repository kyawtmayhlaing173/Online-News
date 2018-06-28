require 'test_helper'

class AControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get a_home_url
    assert_response :success
  end

end
