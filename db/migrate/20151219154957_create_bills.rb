class CreateBills < ActiveRecord::Migration
  def change
    create_table :bills do |t|
      t.belongs_to :client
      t.belongs_to :person
      t.text :description
      t.float :total
      t.date :issue_date

      t.timestamps null: false
    end
  end
end
