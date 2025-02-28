class CreateInvoices < ActiveRecord::Migration[8.0]
  def change
    create_table :invoices do |t|
      t.date :date_invoice
      t.integer :amount
      t.date :date_advance_new_payment_amount
      t.integer :advance_payment_amount

      t.timestamps
    end
  end
end
