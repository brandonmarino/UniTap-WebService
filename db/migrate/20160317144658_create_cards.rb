class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.integer :companyid
      t.string :companyname
      t.string :objectid

      t.timestamps null: false
    end
  end
end
