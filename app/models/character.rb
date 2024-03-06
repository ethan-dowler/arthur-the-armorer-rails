class Character < ApplicationRecord
  before_create :set_current_hp

  def max_hp
    90 + (10 * base_body)
  end

  def attack_power
    20 + (5 * base_body)
  end

  private

  def set_current_hp
    self.current_hp = max_hp
  end
end
