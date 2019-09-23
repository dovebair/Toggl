require "application_system_test_case"

class ToggleListsTest < ApplicationSystemTestCase
  setup do
    @toggle_list = toggle_lists(:one)
  end

  test "visiting the index" do
    visit toggle_lists_url
    assert_selector "h1", text: "Toggle Lists"
  end

  test "creating a Toggle list" do
    visit toggle_lists_url
    click_on "New Toggle List"

    fill_in "Description", with: @toggle_list.description
    fill_in "Title", with: @toggle_list.title
    click_on "Create Toggle list"

    assert_text "Toggle list was successfully created"
    click_on "Back"
  end

  test "updating a Toggle list" do
    visit toggle_lists_url
    click_on "Edit", match: :first

    fill_in "Description", with: @toggle_list.description
    fill_in "Title", with: @toggle_list.title
    click_on "Update Toggle list"

    assert_text "Toggle list was successfully updated"
    click_on "Back"
  end

  test "destroying a Toggle list" do
    visit toggle_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Toggle list was successfully destroyed"
  end
end
