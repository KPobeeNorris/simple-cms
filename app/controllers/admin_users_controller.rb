class AdminUsersController < ApplicationController

  layout 'admin'

  def index
    @admin_users = AdminUser.sorted
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
    @admin_user = AdminUser.find(params[:id])
  end

  def destroy
    @admin_user = AdminUser.find(params[:id])
    @admin_user.destroy
    flash[:notice] = "#{@admin_user.name} successfully destroyed"
    redirect_to(admin_user_path)
  end

end
