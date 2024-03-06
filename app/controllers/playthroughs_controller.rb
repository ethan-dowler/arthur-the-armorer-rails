class PlaythroughsController < ApplicationController
  helper_method :playthrough

  def index; end

  def show; end

  def create
    new_playthrough = Playthrough.create!

    redirect_to playthrough_path(new_playthrough)
  end

  private

  def playthrough
    @playthrough ||= Playthrough.find(params[:id])
  end
end
