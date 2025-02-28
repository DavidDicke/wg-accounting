class CreateBankAccountAdmins < ActiveRecord::Migration[8.0]
  def change
    create_table :bank_account_admins do |t|
      t.timestamps
    end
  end
end
