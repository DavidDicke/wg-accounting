class BankAccount < ApplicationRecord
  has_many :transactions
  has_many :bank_account_admins
  has_many_attached :csv_files

  validates :iban, presence: true
  validates :bic, presence: true
  validates :bank_name, presence: true
end
