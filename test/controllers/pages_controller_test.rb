require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get arena" do
    get pages_arena_url
    assert_response :success
  end

end
