class ContractService < ApplicationRecord
  belongs_to :contract
  belongs_to :service

  validates :contract, presence: true
  validates :service, presence: true
end
