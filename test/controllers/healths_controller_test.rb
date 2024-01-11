require 'test_helper'

class HealthsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get healths_show_url
    assert_response :success
  end

end
