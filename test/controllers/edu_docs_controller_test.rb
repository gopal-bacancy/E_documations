require "test_helper"

class EduDocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @edu_doc = edu_docs(:one)
  end

  test "should get index" do
    get edu_docs_url
    assert_response :success
  end

  test "should get new" do
    get new_edu_doc_url
    assert_response :success
  end

  test "should create edu_doc" do
    assert_difference('EduDoc.count') do
      post edu_docs_url, params: { edu_doc: {  } }
    end

    assert_redirected_to edu_doc_url(EduDoc.last)
  end

  test "should show edu_doc" do
    get edu_doc_url(@edu_doc)
    assert_response :success
  end

  test "should get edit" do
    get edit_edu_doc_url(@edu_doc)
    assert_response :success
  end

  test "should update edu_doc" do
    patch edu_doc_url(@edu_doc), params: { edu_doc: {  } }
    assert_redirected_to edu_doc_url(@edu_doc)
  end

  test "should destroy edu_doc" do
    assert_difference('EduDoc.count', -1) do
      delete edu_doc_url(@edu_doc)
    end

    assert_redirected_to edu_docs_url
  end
end
