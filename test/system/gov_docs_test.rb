require "application_system_test_case"

class GovDocsTest < ApplicationSystemTestCase
  setup do
    @gov_doc = gov_docs(:one)
  end

  test "visiting the index" do
    visit gov_docs_url
    assert_selector "h1", text: "Gov Docs"
  end

  test "creating a Gov doc" do
    visit gov_docs_url
    click_on "New Gov Doc"

    click_on "Create Gov doc"

    assert_text "Gov doc was successfully created"
    click_on "Back"
  end

  test "updating a Gov doc" do
    visit gov_docs_url
    click_on "Edit", match: :first

    click_on "Update Gov doc"

    assert_text "Gov doc was successfully updated"
    click_on "Back"
  end

  test "destroying a Gov doc" do
    visit gov_docs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gov doc was successfully destroyed"
  end
end
