require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest

  test "signup" do
    get signup_path
    assert_response :success
  end
  
  test "login" do
    get login_path
    assert_response :success
  end
  
end
