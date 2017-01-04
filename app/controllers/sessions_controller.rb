require 'pry'
class SessionsController < ApplicationController


  def new

  end

  def create
    # binding.pry
    if params[:name].blank?
      redirect_to login_path and return
    else
      session[:name] = params[:name]
      redirect_to root_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end


end
