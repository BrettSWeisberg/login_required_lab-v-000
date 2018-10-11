class SessionsController < ApplicationController
  helper_method :current_user

  def new
  end

  def create

    if params[:name] && params[:name].empty?
        session[:name] = params[:name]
        redirect_to "/"
    else
      redirect_to 
    end
  end

  def destroy
    render 'secrets/show'
    if session[:name] != nil
      session.destroy
    end
  end
end
