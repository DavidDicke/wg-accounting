class BankAccount < ApplicationRecord
  has_many :transactions
  has_many :bank_account_admins

  validates :iban, presence: true
  validates :bic, presence: true
  validates :bank_name, presence: true
end
