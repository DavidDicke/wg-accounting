# == Schema Information
#
# Table name: invoices
#
#  id                              :bigint           not null, primary key
#  advance_payment_amount          :integer
#  amount                          :integer
#  date_advance_new_payment_amount :date
#  date_invoice                    :date
#  invoice_number                  :string
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#  contract_id                     :bigint           not null
#
# Indexes
#
#  index_invoices_on_contract_id  (contract_id)
#
# Foreign Keys
#
#  fk_rails_...  (contract_id => contracts.id)
#
require "test_helper"

class InvoiceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
