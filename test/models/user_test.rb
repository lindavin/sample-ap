require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @user = User.new(name: "Hello", email: "Human")
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
end
