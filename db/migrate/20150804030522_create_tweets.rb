class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :content
      t.integer :user_id, null: false

      t.timestamps null: false
    end

    add_index :tweets, :user_id
  end
end
