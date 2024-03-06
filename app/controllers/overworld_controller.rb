class OverworldController < ApplicationController
  helper_method :playthrough

  def index; end

  private

  def playthrough
    @playthrough ||= Playthrough.find(params[:playthrough_id])
  end
end
