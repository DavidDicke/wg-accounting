# == Schema Information
#
# Table name: bank_accounts
#
#  id         :bigint           not null, primary key
#  bank_name  :string
#  bic        :string
#  close_date :date
#  iban       :string
#  start_date :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class BankAccount < ApplicationRecord
  has_many :transactions
  has_many :bank_account_admins
  has_many_attached :csv_files

  validates :iban, presence: true
  validates :bic, presence: true
  validates :bank_name, presence: true
end
