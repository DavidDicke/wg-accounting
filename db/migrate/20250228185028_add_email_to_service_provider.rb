class AddEmailToServiceProvider < ActiveRecord::Migration[8.0]
  def change
    add_column :service_providers, :email, :string
  end
end
