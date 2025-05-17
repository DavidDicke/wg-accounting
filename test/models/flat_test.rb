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
require "test_helper"

class FlatTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
