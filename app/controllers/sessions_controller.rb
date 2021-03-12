class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
       session[:user_id] = @user.email
       flash[:notice] = "You are logged in as "+session[:user_id]
       redirect_to root_url
    else
       flash[:notice] = "Either email or password is wrong"
       render 'new'
    end
  end

  def login
  end

  def welcome
  end
end
