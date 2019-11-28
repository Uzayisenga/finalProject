require 'test_helper'

class PublisherControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get publisher_create_url
    assert_response :success
  end

  test "should get store" do
    get publisher_store_url
    assert_response :success
  end

end
