class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.belongs_to :bill
      t.string :name
      t.integer :cui

      t.timestamps null: false
    end
  end
end
