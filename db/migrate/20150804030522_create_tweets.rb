class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :content, null: false
      t.boolean :sms, null: false, default: false

      t.timestamps null: false
    end
  end
end
