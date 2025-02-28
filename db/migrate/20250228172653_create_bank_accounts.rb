class CreateBankAccounts < ActiveRecord::Migration[8.0]
  def change
    create_table :bank_accounts do |t|
      t.string :iban
      t.string :bic
      t.string :bank_name

      t.timestamps
    end
  end
end
