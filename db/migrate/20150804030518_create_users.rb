class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, default: ""
      t.string :sms_number

      t.timestamps null: false
    end
    
    add_index :users, :sms_number, unique: true
  end
end
