require 'test_helper'

class CsessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get csession_new_url
    assert_response :success
  end

  test "should get create" do
    get csession_create_url
    assert_response :success
  end

end
