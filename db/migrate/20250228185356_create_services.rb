class CreateServices < ActiveRecord::Migration[8.0]
  def change
    create_table :services do |t|
      t.string :name
      t.text :description
      t.integer :fixed_amount
      t.integer :variable_cost_amount
      t.string :variable_cost_unit
      t.date :date_change

      t.timestamps
    end
  end
end
