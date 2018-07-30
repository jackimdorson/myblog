require 'test_helper'

class MybooksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mybooks_index_url
    assert_response :success
  end

  test "should get show" do
    get mybooks_show_url
    assert_response :success
  end

  test "should get genre" do
    get mybooks_genre_url
    assert_response :success
  end

  test "should get home" do
    get mybooks_home_url
    assert_response :success
  end

end
