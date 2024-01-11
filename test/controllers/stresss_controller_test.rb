require 'test_helper'

class StresssControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get stresss_show_url
    assert_response :success
  end

end
