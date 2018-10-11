class SessionsController < ApplicationController
  helper_method :current_user

  def new
  end

  def create
  binding.pry
    if params[:name] == nil ||params[:name].empty?
      redirect_to '/sessions/new'
    else
      current_user
    end
  end

  def destroy
    render 'secrets/show'
    if session[:name] != nil
      session.destroy
    end
  end
end
