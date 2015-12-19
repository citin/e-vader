class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :surname
      t.date :birthdate
      t.string :gender
      t.integer :du
      t.string :cui

      t.timestamps null: false
    end
    add_index :clients, :du, unique: true
  end
end
