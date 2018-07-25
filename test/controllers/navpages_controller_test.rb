require 'test_helper'

class NavpagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get navpages_index_url
    assert_response :success
  end

  test "should get about" do
    get navpages_about_url
    assert_response :success
  end

  test "should get contact" do
    get navpages_contact_url
    assert_response :success
  end

  test "should get help" do
    get navpages_help_url
    assert_response :success
  end

  test "should get services" do
    get navpages_services_url
    assert_response :success
  end

end
