class AddReferenceToRooms < ActiveRecord::Migration[8.0]
  def change
    add_reference :rooms, :flat, null: false, foreign_key: true
  end
end
