class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :email
      t.string :type

      t.timestamps
    end
  end
end
