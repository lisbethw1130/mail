class Campaign < ApplicationRecord
  include AASM

  aasm do
    state :prepare, initial: true
    state :scheduled, :finished
  end
end
