class Service < ApplicationRecord
  has_many :contract_services

  validates :name, presence: true
  validates :description, presence: true
end
