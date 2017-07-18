module ApplicationHelper
  def current_user
    k = JobSeeker.find_by(id: session[:user_id])
    if k.nil?
      @current_user ||= Company.find_by(id: session[:user_id])
    else
      @current_user ||= JobSeeker.find_by(id: session[:user_id])
    end
  end
end
