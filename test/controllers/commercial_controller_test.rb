require "test_helper"

class CommercialControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get commercial_index_url
    assert_response :success
  end

  test "should get show" do
    get commercial_show_url
    assert_response :success
  end

  test "should get new" do
    get commercial_new_url
    assert_response :success
  end

  test "should get create" do
    get commercial_create_url
    assert_response :success
  end

  test "should get edit" do
    get commercial_edit_url
    assert_response :success
  end

  test "should get update" do
    get commercial_update_url
    assert_response :success
  end

  test "should get delete" do
    get commercial_delete_url
    assert_response :success
  end
end
