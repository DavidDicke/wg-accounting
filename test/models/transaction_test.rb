# == Schema Information
#
# Table name: transactions
#
#  id               :bigint           not null, primary key
#  amount           :string
#  comment          :text
#  date             :date
#  transaction_type :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  bank_account_id  :bigint           not null
#
# Indexes
#
#  index_transactions_on_bank_account_id  (bank_account_id)
#
# Foreign Keys
#
#  fk_rails_...  (bank_account_id => bank_accounts.id)
#
require "test_helper"

class TransactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
