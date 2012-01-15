require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get disclaimer" do
    get :disclaimer
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get mm24ytsrhfsom" do
    get :mm24ytsrhfsom
    assert_response :success
  end

  test "should get policy" do
    get :policy
    assert_response :success
  end

  test "should get terms" do
    get :terms
    assert_response :success
  end

end
