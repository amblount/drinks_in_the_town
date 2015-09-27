require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get food_category:string" do
    get :food_category:string
    assert_response :success
  end

  test "should get neighborhood_id:integer" do
    get :neighborhood_id:integer
    assert_response :success
  end

end
