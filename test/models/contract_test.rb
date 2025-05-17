# == Schema Information
#
# Table name: contracts
#
#  id              :bigint           not null, primary key
#  contract_number :string
#  end_date        :date
#  meter_number    :string
#  name            :string
#  notice_period   :string
#  start_date      :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
require "test_helper"

class ContractTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
