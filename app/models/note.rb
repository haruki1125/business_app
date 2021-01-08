class Note < ApplicationRecord
  belongs_to :user
  
  with_options presence: true do
    validates :fact
  end
end
