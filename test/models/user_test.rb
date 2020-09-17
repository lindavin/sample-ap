require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Hello", email: "human", password: "foo", password_confirmation: "foo")
  end 
  
  test "Should be valid" do
   assert @user.valid?
  end
  
  test "Name should be present" do
    @user.name = '         '
    assert_not @user.valid?
  end
  
  test "Email should be present" do
    @user.email = '         '
    assert_not @user.valid?
  end
  
  test "User should be unique" do
    duplicate_user = @user.dup 
    @user.save
    assert_not duplicate_user.valid?
  end

  test "Pasword should be present" do
    @user.password = " " * 6
    assert_not @user.valid?
  end
end
