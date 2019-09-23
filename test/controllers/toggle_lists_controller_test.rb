require 'test_helper'

class ToggleListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @toggle_list = toggle_lists(:one)
  end

  test "should get index" do
    get toggle_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_toggle_list_url
    assert_response :success
  end

  test "should create toggle_list" do
    assert_difference('ToggleList.count') do
      post toggle_lists_url, params: { toggle_list: { description: @toggle_list.description, title: @toggle_list.title } }
    end

    assert_redirected_to toggle_list_url(ToggleList.last)
  end

  test "should show toggle_list" do
    get toggle_list_url(@toggle_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_toggle_list_url(@toggle_list)
    assert_response :success
  end

  test "should update toggle_list" do
    patch toggle_list_url(@toggle_list), params: { toggle_list: { description: @toggle_list.description, title: @toggle_list.title } }
    assert_redirected_to toggle_list_url(@toggle_list)
  end

  test "should destroy toggle_list" do
    assert_difference('ToggleList.count', -1) do
      delete toggle_list_url(@toggle_list)
    end

    assert_redirected_to toggle_lists_url
  end
end
