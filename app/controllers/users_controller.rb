class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @peaks = Peak.all.to_a
    @idx = 0
    @rng = 10
  end

  def edit
  end

  def update
  	@user = current_user
    if @user.update(user_params)
      redirect_to user_path
    else
      redirect_to root_path
    end

  end

  private
    def user_params
      params.require(:user).permit(peak_ids:[])
    end

end