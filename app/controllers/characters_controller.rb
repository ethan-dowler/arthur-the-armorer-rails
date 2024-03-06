class CharactersController < ApplicationController
  helper_method :playthrough

  def new; end

  def create
    playthrough.create_character!(**character_params)

    redirect_to playthrough_path(playthrough)
  end

  private

  def playthrough
    @playthrough ||= Playthrough.find(params[:playthrough_id])
  end

  def character_params
    params.require(:character).permit(
      %i[
        name
        base_mind
        base_body
        base_spirit
      ]
    )
  end
end
