class CreateParsemodels < ActiveRecord::Migration
  def change
    create_table :parsemodels do |t|
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end
