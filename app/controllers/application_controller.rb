class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    #fixme please try  and catch when User.find(session[:user_id]) is nil
    begin
      k = JobSeeker.find_by(id: session[:user_id])
      if k.nil?
        @current_user ||= Company.find_by(id: session[:user_id])
      else
        @current_user ||= JobSeeker.find_by(id: session[:user_id])
      end
    rescue ActiveRecord::RecordNotFound
      session.delete(:user_id)
      session[:user_id] = nil
    end
  end

end
