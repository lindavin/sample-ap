require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest

  test "signup" do
    get signup_path
    assert_response :success
  end
  
  test "signup links" do
    get signup_path
    assert_select 'a[href=?]', login_path
    end
  
  test "login" do
    get login_path
    assert_response :success
  end
  
  test "login links" do
    get login_path
    assert_select 'a[href=?]', signup_path

  end
  
end
