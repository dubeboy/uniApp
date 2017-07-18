class JobSeekerSessionController < ApplicationController

  def new
    @job_seeker = JobSeeker.new
  end

  def create
    @job_seeker = JobSeeker.authenticate(params[:email], params[:password])
    if @job_seeker
      session[:user_id] = @job_seeker.id
      redirect_to root_url, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
end
