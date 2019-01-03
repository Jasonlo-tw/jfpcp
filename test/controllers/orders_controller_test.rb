require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get orders_contact_url
    assert_response :success
  end

  test "should get shipping_payment" do
    get orders_shipping_payment_url
    assert_response :success
  end

  test "should get create" do
    get orders_create_url
    assert_response :success
  end

end
