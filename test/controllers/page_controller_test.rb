require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
  end

  test "should get userinfo" do
    get :userinfo
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

end
