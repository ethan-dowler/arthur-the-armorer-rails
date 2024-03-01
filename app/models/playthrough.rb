class Playthrough < ApplicationRecord
  belongs_to :account

  before_create :set_playthrough_number

  private

  def set_playthrough_number
    self.number =
      if account.playthroughs.exists?
        account.playthroughs.maximum(:number) + 1
      else
        1
      end
  end
end
