# == Schema Information
#
# Table name: rooms
#
#  id         :bigint           not null, primary key
#  sqm        :float
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  flat_id    :bigint           not null
#
# Indexes
#
#  index_rooms_on_flat_id  (flat_id)
#
# Foreign Keys
#
#  fk_rails_...  (flat_id => flats.id)
#
require "test_helper"

class RoomTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
