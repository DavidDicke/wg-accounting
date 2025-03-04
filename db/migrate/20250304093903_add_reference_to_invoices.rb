class AddReferenceToInvoices < ActiveRecord::Migration[8.0]
  def change
    add_reference :invoices, :contract, null: false, foreign_key: true
  end
end
