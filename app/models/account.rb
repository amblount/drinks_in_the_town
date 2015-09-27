# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  age        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  gender     :string
#  occupation :string
#

class Account < ActiveRecord::Base
  has_one :neighborhood
end
