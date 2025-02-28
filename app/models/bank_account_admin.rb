class BankAccountAdmin < ApplicationRecord
  belongs_to :bank_account
  has_one :user
  belongs_to :service_provider

  # validates that either user or service provider is present
  validates :user, presence: true, unless: :service_provider
  validates :service_provider, presence: true, unless: :user
  validates :bank_account, presence: true
end
