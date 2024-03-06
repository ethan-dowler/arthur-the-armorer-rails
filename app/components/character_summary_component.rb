class CharacterSummaryComponent < ApplicationComponent
  attr_reader :character, :previous_character

  delegate :name, :current_hp, :max_hp, to: :character

  # TODO: allow "previous character" param that is the character as it was before the current render.
  # This will make it easy to animate all the things.
  def initialize(character, previous_character: nil)
    @character = character
    @previous_character = previous_character
  end

  # previous values for animating progress bars
  def previous_hp
    return nil if previous_character.nil?

    previous_character.current_hp
  end
end
