require 'test_helper'

class Mybooks::GenreControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get mybooks_genre_show_url
    assert_response :success
  end

end
