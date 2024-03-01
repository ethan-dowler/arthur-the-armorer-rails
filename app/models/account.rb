class Account < ApplicationRecord
  has_many :playthroughs, dependent: :destroy
end
