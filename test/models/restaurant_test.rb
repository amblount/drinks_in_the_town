# == Schema Information
#
# Table name: restaurants
#
#  id              :integer          not null, primary key
#  name            :string
#  address         :string
#  food_category   :string
#  neighborhood_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
