require 'test_helper'

class JobSeekersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_seeker = job_seekers(:one)
  end

  test "should get index" do
    get job_seekers_url
    assert_response :success
  end

  test "should get new" do
    get new_job_seeker_url
    assert_response :success
  end

  test "should create job_seeker" do
    assert_difference('JobSeeker.count') do
      post job_seekers_url, params: { job_seeker: { j_email: @job_seeker.j_email, j_firstname: @job_seeker.j_firstname, j_lastname: @job_seeker.j_lastname, j_password: @job_seeker.j_password, j_username: @job_seeker.j_username } }
    end

    assert_redirected_to job_seeker_url(JobSeeker.last)
  end

  test "should show job_seeker" do
    get job_seeker_url(@job_seeker)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_seeker_url(@job_seeker)
    assert_response :success
  end

  test "should update job_seeker" do
    patch job_seeker_url(@job_seeker), params: { job_seeker: { j_email: @job_seeker.j_email, j_firstname: @job_seeker.j_firstname, j_lastname: @job_seeker.j_lastname, j_password: @job_seeker.j_password, j_username: @job_seeker.j_username } }
    assert_redirected_to job_seeker_url(@job_seeker)
  end

  test "should destroy job_seeker" do
    assert_difference('JobSeeker.count', -1) do
      delete job_seeker_url(@job_seeker)
    end

    assert_redirected_to job_seekers_url
  end
end
