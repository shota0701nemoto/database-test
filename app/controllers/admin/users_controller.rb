class Admin::UsersController < ApplicationController
  before_action :admin_user

  def index
    @users = User.all.order("created_at DESC")
  end

  private
  def admin_user
    #redirect_to(new_admin_users_path) unless current_user.admin?
  end
end
