class SessionsController < ApplicationController
  def new
  end

  def create
    if current_user == nil ||current_user.empty?
      redirect_to '/sessions/new'
    else
      current_user
    end
  end

  def destroy

  end
end
