class Flat < ApplicationRecord
  has_many :rooms, dependent: :destroy
end
