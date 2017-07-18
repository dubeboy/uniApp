module ApplicationHelper
  def current_user
    k = JobSeeker.find_by(id: session[:user_id])
    if k.nil?
      @current_user ||= Company.find_by(id: session[:user_id])
    else
      @current_user ||= JobSeeker.find_by(id: session[:user_id])
    end
  end

  def get_name(current_user)
    unless current_user.nil?
      if current_user.instance_of? Company
        return current_user.c_name
      else
        return current_user.j_username
      end
    end
  end
end
