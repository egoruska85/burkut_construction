class Header < ApplicationRecord
  has_one_attached :logo

  #validates :logo, presence: true
end
