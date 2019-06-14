require 'test_helper'

class TestControllerTest < ActionDispatch::IntegrationTest
  test "should get send" do
    get test_send_url
    assert_response :success
  end

  test "should get back" do
    get test_back_url
    assert_response :success
  end

end
