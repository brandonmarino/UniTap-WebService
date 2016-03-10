class CreateCompanyCards < ActiveRecord::Migration
  def change
    create_table :company_cards do |t|
      t.integer :userid
      t.string :cardhash
      t.integer :phonecrc
      t.integer :activity

      t.timestamps null: false
    end
  end
end
