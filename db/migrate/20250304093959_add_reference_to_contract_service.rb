class AddReferenceToContractService < ActiveRecord::Migration[8.0]
  def change
    add_reference :contract_services, :contract, null: false, foreign_key: true
    add_reference :contract_services, :service, null: false, foreign_key: true
  end
end
