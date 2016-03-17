require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "UniTap Web Service" #This line is to add this title to the page! 
  end

  test "should get aboutus" do
    get :aboutus
    assert_response :success
    assert_select "title", "UniTap Web Service" 
  end

  test "should get userinfo" do
    get :userinfo
    assert_response :success
    assert_select "title", "UniTap Web Service" 
  end



end
