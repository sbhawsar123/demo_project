class UsersController < ApplicationController
  def new
  end

  def create
    @user = User.create(param_method) 
    if @user.save       
      session[:user_id] = @user.email
      flash[:notice] = "Succefully signed in"
      redirect_to '/welcome'
    else
      flash[:notice] = "Either email exist or Mobile no is incorrect"
      render 'new'
    end
  end
  def param_method
    params.require(:user).permit(:email, :password,:first_name, :last_name, :mobile_no)
  end
end
