require 'test_helper'

class ImprovementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get improvements_new_url
    assert_response :success
  end

  test "should get create" do
    get improvements_create_url
    assert_response :success
  end

  test "should get update" do
    get improvements_update_url
    assert_response :success
  end

  test "should get edit" do
    get improvements_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get improvements_destroy_url
    assert_response :success
  end

  test "should get index" do
    get improvements_index_url
    assert_response :success
  end

  test "should get show" do
    get improvements_show_url
    assert_response :success
  end

end
