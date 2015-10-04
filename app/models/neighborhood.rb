# == Schema Information
#
# Table name: neighborhoods
#
#  id         :integer          not null, primary key
#  name       :string
#  city       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  url        :string
#

class Neighborhood < ActiveRecord::Base
  has_many :accounts
  has_many :users
end
