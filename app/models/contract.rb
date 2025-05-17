# == Schema Information
#
# Table name: contracts
#
#  id              :bigint           not null, primary key
#  contract_number :string
#  end_date        :date
#  meter_number    :string
#  name            :string
#  notice_period   :string
#  start_date      :date
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
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
