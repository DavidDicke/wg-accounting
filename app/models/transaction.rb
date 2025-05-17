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
class Transaction < ApplicationRecord
  belongs_to :bank_account

  validates :amount, presence: true
  validates :date, presence: true
  validates :bank_account, presence: true
  validates :transaction_type, presence: true
end
