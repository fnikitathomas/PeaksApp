class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @peaks = Peak.all
  end

end