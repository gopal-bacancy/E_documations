require "application_system_test_case"

class EduDocsTest < ApplicationSystemTestCase
  setup do
    @edu_doc = edu_docs(:one)
  end

  test "visiting the index" do
    visit edu_docs_url
    assert_selector "h1", text: "Edu Docs"
  end

  test "creating a Edu doc" do
    visit edu_docs_url
    click_on "New Edu Doc"

    click_on "Create Edu doc"

    assert_text "Edu doc was successfully created"
    click_on "Back"
  end

  test "updating a Edu doc" do
    visit edu_docs_url
    click_on "Edit", match: :first

    click_on "Update Edu doc"

    assert_text "Edu doc was successfully updated"
    click_on "Back"
  end

  test "destroying a Edu doc" do
    visit edu_docs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Edu doc was successfully destroyed"
  end
end
