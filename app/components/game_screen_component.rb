class GameScreenComponent < ApplicationComponent
  attr_reader :playthrough

  def initialize(playthrough)
    @playthrough = playthrough
  end

  def turbo_frame_src
    if playthrough.character.nil?
      new_playthrough_character_path(playthrough)
    else
      playthrough_overworld_index_path(playthrough)
    end
  end
end
