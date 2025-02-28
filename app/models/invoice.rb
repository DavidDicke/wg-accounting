class Invoice < ApplicationRecord
  belongs_to :contract

  validates :contract, presence: true
  validates :invoice_number, presence: true
  validates :date_invoice, presence: true
  validates :amount, presence: true
  validates :date_advance_new_payment_amount, presence: true
  validates :advance_payment_amount, presence: true
end
