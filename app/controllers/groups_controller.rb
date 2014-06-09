class GroupsController < ApplicationController
  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:success] = "Group created!"
      redirect_to root_path
    else
      flash[:error] = "Group could not be created"
      render "new"
    end
  end

  def new
    @group = Group.new
  end

  private

  # {
  #   :group => {
  #     :name => "hey"
  #     :other_stuff => "other" # <= Nixed
  #   },
  #   :something_else => {

  #   }
  # }

  def group_params
    params.require(:group).permit(:name)
  end
end
