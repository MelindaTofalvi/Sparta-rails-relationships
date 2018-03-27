class StudentPolicy < ApplicationPolicy

	attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @user = model
  end

  
  def destroy?
    return false if @current_user == @user
    @current_user.admin?
  end
end