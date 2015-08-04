class AddSmsStatusToTweets < ActiveRecord::Migration
  def change
    add_column :tweets, :sms_tweet, :boolean, default: false
  end
end
