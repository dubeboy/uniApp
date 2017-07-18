class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    #fixme please try  and catch when User.find(session[:user_id]) is nil

    begin
      @current_user ||= JobSeeker.find(session[:user_id]) if session[:user_id]
    rescue ActiveRecord::RecordNotFound
      session.delete(:user_id)
      session[:user_id] = nil
    end
  end

end
