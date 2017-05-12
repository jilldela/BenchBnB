class Api::SessionsController < ApplicationController
  def create
    @user = User.find_by_credentials(params[:user][:username], params[:user][:password])

    if @user
      login(@user)
      render "api/users/show"
    else
    end
  end

  def destroy
    @user = current_user
    if @user
      logout
    else
    end
  end
end
