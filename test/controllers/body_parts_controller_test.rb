require "test_helper"

class BodyPartsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get body_parts_show_url
    assert_response :success
  end
end
