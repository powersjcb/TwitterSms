# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  username   :string           default(""), not null
#  sms_number :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
end
