class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :email, null: false
      t.string :client_type

      t.timestamps
    end
  end
end
