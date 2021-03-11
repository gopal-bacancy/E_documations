require "test_helper"

class GovDocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gov_doc = gov_docs(:one)
  end

  test "should get index" do
    get gov_docs_url
    assert_response :success
  end

  test "should get new" do
    get new_gov_doc_url
    assert_response :success
  end

  test "should create gov_doc" do
    assert_difference('GovDoc.count') do
      post gov_docs_url, params: { gov_doc: {  } }
    end

    assert_redirected_to gov_doc_url(GovDoc.last)
  end

  test "should show gov_doc" do
    get gov_doc_url(@gov_doc)
    assert_response :success
  end

  test "should get edit" do
    get edit_gov_doc_url(@gov_doc)
    assert_response :success
  end

  test "should update gov_doc" do
    patch gov_doc_url(@gov_doc), params: { gov_doc: {  } }
    assert_redirected_to gov_doc_url(@gov_doc)
  end

  test "should destroy gov_doc" do
    assert_difference('GovDoc.count', -1) do
      delete gov_doc_url(@gov_doc)
    end

    assert_redirected_to gov_docs_url
  end
end
