require 'test_helper'

class MypostsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get myposts_index_url
    assert_response :success
  end

  test "should get add" do
    get myposts_add_url
    assert_response :success
  end

  test "should get edit" do
    get myposts_edit_url
    assert_response :success
  end

  test "should get delete" do
    get myposts_delete_url
    assert_response :success
  end

end
