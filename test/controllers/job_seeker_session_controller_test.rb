require 'test_helper'

class JobSeekerSessionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get job_seeker_session_new_url
    assert_response :success
  end

  test "should get create" do
    get job_seeker_session_create_url
    assert_response :success
  end

end
