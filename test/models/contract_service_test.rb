# == Schema Information
#
# Table name: contract_services
#
#  id          :bigint           not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  contract_id :bigint           not null
#  service_id  :bigint           not null
#
# Indexes
#
#  index_contract_services_on_contract_id  (contract_id)
#  index_contract_services_on_service_id   (service_id)
#
# Foreign Keys
#
#  fk_rails_...  (contract_id => contracts.id)
#  fk_rails_...  (service_id => services.id)
#
require "test_helper"

class ContractServiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
