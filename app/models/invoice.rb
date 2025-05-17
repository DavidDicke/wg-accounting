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
class Invoice < ApplicationRecord
  belongs_to :contract

  validates :contract, presence: true
  validates :invoice_number, presence: true
  validates :date_invoice, presence: true
  validates :amount, presence: true
  validates :date_advance_new_payment_amount, presence: true
  validates :advance_payment_amount, presence: true
end
