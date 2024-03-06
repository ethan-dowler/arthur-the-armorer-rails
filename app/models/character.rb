class Character < ApplicationRecord
  def attack_power
    10 + (5 * base_body)
  end
end
