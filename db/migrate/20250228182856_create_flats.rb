class CreateFlats < ActiveRecord::Migration[8.0]
  def change
    create_table :flats do |t|
      t.string :address
      t.float :sqm

      t.timestamps
    end
  end
end
