class TipsController < ApplicationController
  before_action :find_peak

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(tip_params)
    @tip.peak_id = @peak.id
    @tip.user_id = current_user.id

    if @tip.save
      redirect_to peak_path(@peak)
    else
      render 'new'
    end
  end

  private

    def tip_params
      params.require(:tip).permit(:comment, :difficulty_rating)
    end

    def find_peak
      @peak = Peak.find(params[:peak_id])
    end
end