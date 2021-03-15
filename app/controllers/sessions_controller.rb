class SessionsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:email])
    if @user&.authenticate(params[:password])
       session[:user_id] = @user.id
       flash[:notice] = "You are logged in"
       redirect_to root_url
    else
       flash[:notice] = "Either email or password is wrong"
       render 'new'
    end
  end
end
