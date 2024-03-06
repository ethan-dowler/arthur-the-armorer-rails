class Playthrough < ApplicationRecord
  has_one :character, dependent: :destroy

  before_create :set_playthrough_number

  private

  def set_playthrough_number
    self.number = Playthrough.maximum(:number).to_i + 1
  end
end
