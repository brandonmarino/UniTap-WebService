class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :companyname
      t.string :cardid

      t.timestamps null: false
    end
  end
end
