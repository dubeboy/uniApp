class CsessionController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    @company = Company.authenticate(params[:jsession][:j_email], params[:jsession][:j_password])
    if @company
      session[:user_id] = @company.id
      redirect_to welcome_path, :notice => "Logged in!"
    else
      flash.now.alert = "Invalid email or password"
      render "new"
    end
  end
end
