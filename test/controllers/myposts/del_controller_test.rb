require 'test_helper'

class Myposts::DelControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get myposts_del_show_url
    assert_response :success
  end

end
