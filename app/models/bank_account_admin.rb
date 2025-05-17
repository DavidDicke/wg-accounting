# == Schema Information
#
# Table name: bank_account_admins
#
#  id                  :bigint           not null, primary key
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  bank_account_id     :bigint           not null
#  service_provider_id :bigint           not null
#
# Indexes
#
#  index_bank_account_admins_on_bank_account_id      (bank_account_id)
#  index_bank_account_admins_on_service_provider_id  (service_provider_id)
#
# Foreign Keys
#
#  fk_rails_...  (bank_account_id => bank_accounts.id)
#  fk_rails_...  (service_provider_id => service_providers.id)
#
class BankAccountAdmin < ApplicationRecord
  belongs_to :bank_account
  has_one :user
  belongs_to :service_provider

  # validates that either user or service provider is present
  validates :user, presence: true, unless: :service_provider
  validates :service_provider, presence: true, unless: :user
  validates :bank_account, presence: true
end
