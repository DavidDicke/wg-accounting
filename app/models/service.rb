# == Schema Information
#
# Table name: services
#
#  id                   :bigint           not null, primary key
#  date_change          :date
#  description          :text
#  fixed_amount         :integer
#  name                 :string
#  variable_cost_amount :integer
#  variable_cost_unit   :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#
class Service < ApplicationRecord
  has_many :contract_services

  validates :name, presence: true
  validates :description, presence: true
end
