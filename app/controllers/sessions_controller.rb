class SessionsController < ApplicationController

  def create
    user = User.where(email: params[:email]).first
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path
    else
      render status: :unauthorized, text: "<h1>401 Unauthorized</h1>"
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end

end
