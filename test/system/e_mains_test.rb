require "application_system_test_case"

class EMainsTest < ApplicationSystemTestCase
  setup do
    @e_main = e_mains(:one)
  end

  test "visiting the index" do
    visit e_mains_url
    assert_selector "h1", text: "E Mains"
  end

  test "creating a E main" do
    visit e_mains_url
    click_on "New E Main"

    click_on "Create E main"

    assert_text "E main was successfully created"
    click_on "Back"
  end

  test "updating a E main" do
    visit e_mains_url
    click_on "Edit", match: :first

    click_on "Update E main"

    assert_text "E main was successfully updated"
    click_on "Back"
  end

  test "destroying a E main" do
    visit e_mains_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "E main was successfully destroyed"
  end
end
