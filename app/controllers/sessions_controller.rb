class SessionsController < ApplicationController
  # skip_before_action :current_user
  
  def home
    logged_in
  end

  def new
  end

  def create
    if params[:name] && !params[:name].empty?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end  
  end

  def destroy
    if session[:name]
      session.delete :name
    else
      session[:name]
    end
  end

end