class AuthenticatesController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_for_authentication email: email
    if user&.valid_password? password
      sign_in(:user, user)
      redirect_to root_path, notice: 'Access Granted'
    else
      redirect_to root_path, notice: 'Access Denied'
    end
  end

  def destroy
    sign_out :user
  end

  private

  def email
    params.require(:user).permit(:email)[:email]
  end

  def password
    params.require(:user).permit(:password)[:password]
  end
end
