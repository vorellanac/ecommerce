require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get products" do
    get product_products_url
    assert_response :success
  end

end
