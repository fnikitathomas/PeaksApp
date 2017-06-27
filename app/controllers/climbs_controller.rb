class ClimbsController < ApplicationController

  def new
    @climb= Climb.new
  end

  def create
      @climb = Climb.new(program_params)
      if @climb.save
          redirect_to @climb
      else
        render action: "new"
      end
  end

  def program_params
    params.require(:climb).permit(:user_id, :peak_id)
  end

end
