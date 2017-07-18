require 'test_helper'

class RegControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get reg_index_url
    assert_response :success
  end

end
