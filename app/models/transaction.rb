class Transaction < ApplicationRecord
  belongs_to :bank_account

  validates :amount, presence: true
  validates :date, presence: true
  validates :bank_account, presence: true
  validates :transaction_type, presence: true
end
