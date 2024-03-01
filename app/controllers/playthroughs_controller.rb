class PlaythroughsController < ApplicationController
  helper_method :playthrough

  def show; end

  def create
    account = Account.find(params[:account_id])
    new_playthrough = account.playthroughs.create!
    redirect_to playthrough_path(new_playthrough)
  end

  private

  def playthrough
    @playthrough ||= Playthrough.find(params[:id])
  end
end
