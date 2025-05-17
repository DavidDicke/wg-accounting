# == Schema Information
#
# Table name: flats
#
#  id         :bigint           not null, primary key
#  address    :string
#  sqm        :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Flat < ApplicationRecord
  has_many :rooms, dependent: :destroy
end
