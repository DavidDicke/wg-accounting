class AddReferenceToBankAccountAdmins < ActiveRecord::Migration[8.0]
  def change
    add_reference :bank_account_admins, :service_provider, null: false, foreign_key: true
    add_reference :bank_account_admins, :bank_account, null: false, foreign_key: true
  end
end
