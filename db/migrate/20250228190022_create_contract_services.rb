class CreateContractServices < ActiveRecord::Migration[8.0]
  def change
    create_table :contract_services do |t|
      t.timestamps
    end
  end
end
