class AddDateToBankAccount < ActiveRecord::Migration[8.0]
  def change
    add_column :bank_accounts, :start_date, :date
    add_column :bank_accounts, :close_date, :date
  end
end
