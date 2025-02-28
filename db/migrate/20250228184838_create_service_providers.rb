class CreateServiceProviders < ActiveRecord::Migration[8.0]
  def change
    create_table :service_providers do |t|
      t.string :name
      t.string :address
      t.string :telephone

      t.timestamps
    end
  end
end
