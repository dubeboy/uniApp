require 'test_helper'

class JsessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get jsession_new_url
    assert_response :success
  end

  test "should get create" do
    get jsession_create_url
    assert_response :success
  end

end
