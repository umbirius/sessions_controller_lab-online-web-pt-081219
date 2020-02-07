class SessionsController < ApplicationController
  def new
  end

  def create 
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_url
    else 
      session[:name] = params[:name]
      redirect_to root_url
    end
  end 

  def destroy 
    session.delete(:name)
  end 
end
