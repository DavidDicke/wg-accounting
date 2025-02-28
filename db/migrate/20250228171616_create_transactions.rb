class CreateTransactions < ActiveRecord::Migration[8.0]
  def change
    create_table :transactions do |t|
      t.string :amount
      t.date :date
      t.text :comment
      t.string :transaction_type

      t.timestamps
    end
  end
end
