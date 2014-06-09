class UsersController < ApplicationController
  def index
    @users = User.all
    @groups = Group.all
    unless user_signed_in?
      flash[:error] = "Please sign in"
      redirect_to new_user_session_path
    end
  end

  def add_to_group
    @group = Group.find(params[:group_id])
    unless user_signed_in?
      flash[:error] = "Please sign in"
      redirect_to new_user_session_path
    end
    if not current_user.groups.include? @group
      current_user.groups << @group
    else
      flash[:error] = "You're already in that group"
    end
    redirect_to root_path
  end

  def remove_from_group
    @group = Group.find(params[:group_id])
    unless user_signed_in?
      flash[:error] = "Please sign in"
      redirect_to new_user_session_path
    end
    current_user.groups.delete @group
    redirect_to root_path
  end
end

