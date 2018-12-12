require 'test_helper'

class CollecitonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get collecitons_index_url
    assert_response :success
  end

end
