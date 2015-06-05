require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get social" do
    get :social
    assert_response :success
  end

end
