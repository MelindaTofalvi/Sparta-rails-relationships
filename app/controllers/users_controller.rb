class UsersController < ApplicationController
  attr_accessor :email, :password, :password_confirmation#, :admin

  validates :email, :uniqueness => true

  has_secure_password

  def update
    @user = User.find(params[:id])
    @user.toggle!(:admin)
    flash[:success] = 'OK!'
    redirect_to root_path
  end
end