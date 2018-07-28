require 'test_helper'

class MygenresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mygenres_index_url
    assert_response :success
  end

  test "should get add" do
    get mygenres_add_url
    assert_response :success
  end

  test "should get edit" do
    get mygenres_edit_url
    assert_response :success
  end

end
