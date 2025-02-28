class ServiceProvider < ApplicationRecord
  has_many :contracts
  has_many :bank_account_admins
  has_many :services, through: :contracts

  validates :name, presence: true
  validates :address, presence: true
  validates :telephone, presence: true
  validates :email, presence: true
  # validate email format
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
