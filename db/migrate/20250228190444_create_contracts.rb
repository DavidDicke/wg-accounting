class CreateContracts < ActiveRecord::Migration[8.0]
  def change
    create_table :contracts do |t|
      t.string :contract_number
      t.string :meter_number
      t.string :notice_period
      t.string :name

      t.timestamps
    end
  end
end
