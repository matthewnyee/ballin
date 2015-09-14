class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :null => false
      t.string :status, default: "NoResponse", :null => false

      t.timestamps null: false
    end
  end
end
