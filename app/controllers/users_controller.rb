class UsersController < ApplicationController

  def index
    render text: "Hello World"
  end

  def create
    user = User.new(params[:user])
    user.save
    redirect_to root_path
  end

end