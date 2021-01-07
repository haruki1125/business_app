class Note < ApplicationRecord

  with_options presence: true do
    validates :fact
  end
end
