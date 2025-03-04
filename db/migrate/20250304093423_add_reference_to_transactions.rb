class AddReferenceToTransactions < ActiveRecord::Migration[8.0]
  def change
    add_reference :transactions, :bank_account, null: false, foreign_key: true
  end
end
