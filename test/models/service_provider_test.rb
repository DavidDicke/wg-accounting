# == Schema Information
#
# Table name: service_providers
#
#  id         :bigint           not null, primary key
#  address    :string
#  email      :string
#  name       :string
#  telephone  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ServiceProviderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
