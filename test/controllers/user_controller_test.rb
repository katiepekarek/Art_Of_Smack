require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get show_sign_in" do
    get :show_sign_in
    assert_response :success
  end

  test "should get sign_in" do
    get :sign_in
    assert_response :success
  end

end
