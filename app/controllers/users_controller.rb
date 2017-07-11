class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id])
    @peaks = Peak.all.to_a
    @idx = 0
    @rng = 10
    respond_to do |format|
      format.html 
      format.js
    end
  end

  def edit
  end

  def update
    @user = current_user
    @peaks = Peak.all 
    respond_to do |format|
      if @user.update(user_params)
      	format.html { redirect_to user_path }
        format.js { render action: :show, format: :js }
      else
	      format.html { redirect_to root_path }
      end
      #format.js { redirect_to user_path, render action: :show, format: :js }
    end
  end

  private
    def user_params
      params.require(:user).permit(peak_ids:[])
    end

end