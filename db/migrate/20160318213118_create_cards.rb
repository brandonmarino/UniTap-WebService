class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.string :company

      t.timestamps null: false
    end
  end
end
