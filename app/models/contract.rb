class Contract < ApplicationRecord
  belongs_to :service_provider
  belongs_to :user
  has_many :contract_services
  has_many :services, through: :contract_services
  has_many :invoices

  validates :service_provider, presence: true
  validates :user, presence: true
  validates :contract_number, presence: true
  validates :notice_period, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :contract_services, presence: true
end
