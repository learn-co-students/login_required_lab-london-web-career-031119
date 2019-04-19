class SessionsController < ApplicationController

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to '/index'
    end
  end

  def destroy
    if !session[:name]
      session[:name]
    else
      session.delete :name
    end
  end

end
