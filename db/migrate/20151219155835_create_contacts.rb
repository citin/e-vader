class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :client
      t.string :kind
      t.string :info

      t.timestamps null: false
    end
  end
end
